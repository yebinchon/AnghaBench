
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int tom_valid(uint8_t tom)
{
 if (tom > 0) {
  if (tom >= 0x7 && tom <= 0xe)
   return 0;
  if (tom == 0x10)
   return 0;
  if (tom > 0x14)
   return 0;
  return 1;
 } else
  return 0;
}
