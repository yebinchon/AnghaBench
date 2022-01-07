
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long
detzcode(const char *const codep)
{
 long result;
 int i;

 result = (codep[0] & 0x80) ? ~0L : 0;
 for (i = 0; i < 4; ++i)
  result = (result << 8) | (codep[i] & 0xff);
 return result;
}
