#!/usr/bin/env bash

SPACED=$(grep -REn '^ .+' --include '*.snippets' snippets);

if [[ $? -ne 1 ]]; then
  echo These snippet lines are indented with spaces:;
  echo;
  echo "$SPACED";
  echo;
  echo 测试失败!
  exit 1;
fi

echo Tests passed!
exit 0;
