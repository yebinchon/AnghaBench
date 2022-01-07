
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t GetMacAddrHashCode(uint64_t ethAddr)
{
    uint64_t mask1, mask2;
    uint32_t xorVal = 0;
    uint8_t i, j;

    for (i=0; i<6; i++)
    {
        mask1 = ethAddr & (uint64_t)0x01;
        ethAddr >>= 1;

        for (j=0; j<7; j++)
        {
            mask2 = ethAddr & (uint64_t)0x01;
            mask1 ^= mask2;
            ethAddr >>= 1;
        }

        xorVal |= (mask1 << (5-i));
    }

    return xorVal;
}
