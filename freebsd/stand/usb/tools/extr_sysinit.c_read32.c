
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int endian32 ;

__attribute__((used)) static uint32_t
read32(uint32_t val)
{
 uint32_t temp;
 uint32_t endian;

 endian = endian32;
 temp = 0;

 while (val) {
  temp |= (val & 0xF) << ((endian & 0xF) * 4);
  endian >>= 4;
  val >>= 4;
 }
 return (temp);
}
