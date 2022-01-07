
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int word_separation_length(const char *s)
{
 const char *begin = s;
 for (;; s++) {
  int c = *s;
  if (c == ' ' || c == '\t')
   continue;
  break;
 }
 return s - begin;
}
