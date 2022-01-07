
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t
extract_ipv4(const uint8_t ipv6[16], const int offset)
{
    uint32_t ipv4 = (uint32_t)ipv6[offset/8+0] << (24 + (offset%8))
                  | (uint32_t)ipv6[offset/8+1] << (16 + (offset%8))
                  | (uint32_t)ipv6[offset/8+2] << ( 8 + (offset%8))
                  | (uint32_t)ipv6[offset/8+3] << ( 0 + (offset%8));
    if (offset/8+4 < 16)
        ipv4 |= (uint32_t)ipv6[offset/8+4] >> (8 - offset%8);
    return ipv4;
}
