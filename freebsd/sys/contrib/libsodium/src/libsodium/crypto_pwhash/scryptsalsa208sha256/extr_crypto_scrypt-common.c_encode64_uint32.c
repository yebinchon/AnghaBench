
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int * itoa64 ;

__attribute__((used)) static uint8_t *
encode64_uint32(uint8_t *dst, size_t dstlen, uint32_t src, uint32_t srcbits)
{
    uint32_t bit;

    for (bit = 0; bit < srcbits; bit += 6) {
        if (dstlen < 1) {
            return ((void*)0);
        }
        *dst++ = itoa64[src & 0x3f];
        dstlen--;
        src >>= 6;
    }
    return dst;
}
