
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char*,int) ;

__attribute__((used)) static int
find_cab_magic(const char *p)
{
 switch (p[4]) {
 case 0:







  if (memcmp(p, "MSCF\0\0\0\0", 8) == 0)
   return 0;
  return 5;
 case 'F': return 1;
 case 'C': return 2;
 case 'S': return 3;
 case 'M': return 4;
 default: return 5;
 }
}
