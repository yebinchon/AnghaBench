
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static uint16_t
next(uint16_t *cur)
{
        uint16_t lsb = *cur & 1;
        *cur >>= 1;
        *cur ^= (-lsb) & 0xB400u;
 return *cur;
}
