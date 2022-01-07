
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
in_delim(char c, const char* delim)
{
 const char* p;
 if(!delim)
  return 0;
 for(p=delim; *p; p++) {
  if(*p == c)
   return 1;
 }
 return 0;
}
