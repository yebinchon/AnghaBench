
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
fallback_gotdata(char *buf, size_t len)
{
 char any_set = 0;
 size_t i;

 for (i = 0; i < len; ++i)
  any_set |= buf[i];
 if (any_set == 0)
  return -1;
 return 0;
}
