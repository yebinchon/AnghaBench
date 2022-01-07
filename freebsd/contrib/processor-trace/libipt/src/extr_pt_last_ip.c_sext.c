
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static uint64_t sext(uint64_t val, uint8_t sign)
{
 uint64_t signbit, mask;

 signbit = 1ull << (sign - 1);
 mask = ~0ull << sign;

 return val & signbit ? val | mask : val & ~mask;
}
