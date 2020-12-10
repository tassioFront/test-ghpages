#!/usr/bin/env sh

set -e

npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:tassiofront/test-ghpages.git main:gh-pages

cd -