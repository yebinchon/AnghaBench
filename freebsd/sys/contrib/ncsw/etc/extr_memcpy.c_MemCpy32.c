
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ p_Src32 ;


 int PTR_TO_UINT (int *) ;

void * MemCpy32(void* pDst,void* pSrc, uint32_t size)
{
    uint32_t leftAlign;
    uint32_t rightAlign;
    uint32_t lastWord;
    uint32_t currWord;
    uint32_t *p_Src32;
    uint32_t *p_Dst32;
    uint8_t *p_Src8;
    uint8_t *p_Dst8;

    p_Src8 = (uint8_t*)(pSrc);
    p_Dst8 = (uint8_t*)(pDst);




    while((PTR_TO_UINT(p_Src8) & 3) && size)
    {
        *p_Dst8++ = *p_Src8++;
        size--;
    }


    while((PTR_TO_UINT(p_Dst8) & 3) && size)
    {
        *p_Dst8++ = *p_Src8++;
        size--;
    }


    leftAlign = (uint32_t)((PTR_TO_UINT(p_Src8) & 3) << 3);
    rightAlign = 32 - leftAlign;


    if (leftAlign == 0)
    {

        p_Src32 = (uint32_t*)(p_Src8);
        p_Dst32 = (uint32_t*)(p_Dst8);
        while (size >> 2)
        {
            *p_Dst32++ = *p_Src32++;
            size -= 4;
        }
        p_Src8 = (uint8_t*)(p_Src32);
        p_Dst8 = (uint8_t*)(p_Dst32);
    }
    else
    {

        p_Src32 = (uint32_t*)(p_Src8 - (leftAlign >> 3));
        p_Dst32 = (uint32_t*)(p_Dst8);
        lastWord = *p_Src32++;
        while(size >> 3)
        {
            currWord = *p_Src32;
            *p_Dst32 = (lastWord << leftAlign) | (currWord >> rightAlign);
            lastWord = currWord;
            p_Src32++;
            p_Dst32++;
            size -= 4;
        }
        p_Dst8 = (uint8_t*)(p_Dst32);
        p_Src8 = (uint8_t*)(p_Src32) - 4 + (leftAlign >> 3);
    }


    while (size--)
        *p_Dst8++ = *p_Src8++;

    return pDst;
}
