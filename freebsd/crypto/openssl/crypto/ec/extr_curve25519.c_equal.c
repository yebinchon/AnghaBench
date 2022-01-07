
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint8_t equal(signed char b, signed char c)
{
    uint8_t ub = b;
    uint8_t uc = c;
    uint8_t x = ub ^ uc;
    uint32_t y = x;
    y -= 1;
    y >>= 31;
    return y;
}
