
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (int) ;

__attribute__((used)) static int token_length(const char *s)
{
 const char *begin = s;
 for (;; s++) {
  int c = *s;
  int end = !(isalnum(c) || c == '_' || c == '-');
  if (end)
   break;
 }
 return s - begin;
}
