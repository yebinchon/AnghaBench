
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (unsigned char) ;

int
mandoc_eos(const char *p, size_t sz)
{
 const char *q;
 int enclosed, found;

 if (0 == sz)
  return 0;







 enclosed = found = 0;
 for (q = p + (int)sz - 1; q >= p; q--) {
  switch (*q) {
  case '\"':
  case '\'':
  case ']':
  case ')':
   if (0 == found)
    enclosed = 1;
   break;
  case '.':
  case '!':
  case '?':
   found = 1;
   break;
  default:
   return found &&
       (!enclosed || isalnum((unsigned char)*q));
  }
 }

 return found && !enclosed;
}
