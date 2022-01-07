
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t GetExtractedOrMask(uint8_t bitOffset, bool fqid)
{
    uint8_t i, mask, numOfOnesToClear, walking1Mask = 1;


    if (bitOffset<8)
    {
        mask = 0;
        for (i = 0 ; i < bitOffset ; i++, walking1Mask <<= 1)
            mask |= walking1Mask;
    }
    else
    {
       mask = 0xFF;
       numOfOnesToClear = 0;
       if (fqid && bitOffset>24)

           numOfOnesToClear = (uint8_t)(bitOffset-24);
       else

          if (!fqid && bitOffset>8)
               numOfOnesToClear = (uint8_t)(bitOffset-8);
       for (i = 0 ; i < numOfOnesToClear ; i++, walking1Mask <<= 1)
           mask &= ~walking1Mask;

    }
    return mask;
}
