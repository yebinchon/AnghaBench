
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
hinthash(char *cp, int vmajor)
{
 int k = 0;

 while (*cp)
  k = (((k << 1) + (k >> 14)) ^ (*cp++)) & 0x3fff;

 k = (((k << 1) + (k >> 14)) ^ (vmajor*257)) & 0x3fff;

 return k;
}
