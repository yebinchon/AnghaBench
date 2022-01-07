
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ decode64_one (scalar_t__*,int const) ;

__attribute__((used)) static const uint8_t *
decode64_uint32(uint32_t *dst, uint32_t dstbits, const uint8_t *src)
{
    uint32_t bit;
    uint32_t value;

    value = 0;
    for (bit = 0; bit < dstbits; bit += 6) {
        uint32_t one;
        if (decode64_one(&one, *src)) {
            *dst = 0;
            return ((void*)0);
        }
        src++;
        value |= one << bit;
    }
    *dst = value;

    return src;
}
