
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mandoc_escape (char const**,int *,int *) ;
 size_t strcspn (char const*,char*) ;

__attribute__((used)) static int
man_strlen(const char *cp)
{
 size_t rsz;
 int skip, sz;

 sz = 0;
 skip = 0;
 for (;;) {
  rsz = strcspn(cp, "\\");
  if (rsz) {
   cp += rsz;
   if (skip) {
    skip = 0;
    rsz--;
   }
   sz += rsz;
  }
  if ('\0' == *cp)
   break;
  cp++;
  switch (mandoc_escape(&cp, ((void*)0), ((void*)0))) {
  case 134:
   return sz;
  case 128:
  case 133:
  case 130:
  case 129:
  case 132:
   if (skip)
    skip = 0;
   else
    sz++;
   break;
  case 131:
   skip = 1;
   break;
  default:
   break;
  }
 }
 return sz;
}
