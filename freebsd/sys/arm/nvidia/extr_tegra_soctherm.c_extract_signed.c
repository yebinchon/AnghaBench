
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;



__attribute__((used)) static int
extract_signed(uint32_t reg, int shift, int bits)
{
 int32_t val;
 uint32_t mask;

 mask = (1 << bits) - 1;
 val = ((reg >> shift) & mask) << (32 - bits);
 val >>= 32 - bits;
 return ((int32_t)val);
}
