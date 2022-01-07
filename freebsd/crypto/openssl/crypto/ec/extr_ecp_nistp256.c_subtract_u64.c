
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint128_t ;
typedef int u64 ;



__attribute__((used)) static void subtract_u64(u64 *result, u64 *carry, u64 v)
{
    uint128_t r = *result;
    r -= v;
    *carry = (r >> 64) & 1;
    *result = (u64)r;
}
