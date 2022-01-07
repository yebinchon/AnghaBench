
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RETAIN_HASH_SIZE ;

__attribute__((used)) static unsigned
xo_retain_hash (const char *fmt)
{
    volatile uintptr_t iptr = (uintptr_t) (const void *) fmt;


    uint32_t val = (uint32_t) ((iptr >> 4) & (((1 << 24) - 1)));

    val = (val ^ 61) ^ (val >> 16);
    val = val + (val << 3);
    val = val ^ (val >> 4);
    val = val * 0x3a8f05c5;
    val = val ^ (val >> 15);
    val &= RETAIN_HASH_SIZE - 1;

    return val;
}
