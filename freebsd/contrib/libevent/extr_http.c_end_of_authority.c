
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
end_of_authority(char *cp)
{
 while (*cp) {
  if (*cp == '?' || *cp == '#' || *cp == '/')
   return cp;
  ++cp;
 }
 return cp;
}
