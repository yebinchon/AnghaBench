
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int int_fast64_t ;



__attribute__((used)) static time_t
detzcode64(const char *const codep)
{
 register time_t result;
 register int i;

 result = (codep[0] & 0x80) ? (~(int_fast64_t) 0) : 0;
 for (i = 0; i < 8; ++i)
  result = result * 256 + (codep[i] & 0xff);
 return result;
}
