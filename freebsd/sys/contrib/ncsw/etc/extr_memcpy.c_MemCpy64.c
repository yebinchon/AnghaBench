
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ pSrc64 ;


 int PTR_TO_UINT (int *) ;

void * MemCpy64(void* pDst,void* pSrc, uint32_t size)
{
    uint32_t leftAlign;
    uint32_t rightAlign;
    uint64_t lastWord;
    uint64_t currWord;
    uint64_t *pSrc64;
    uint64_t *pDst64;
    uint8_t *p_Src8;
    uint8_t *p_Dst8;

    p_Src8 = (uint8_t*)(pSrc);
    p_Dst8 = (uint8_t*)(pDst);




    while((PTR_TO_UINT(p_Src8) & 7) && size)
    {
        *p_Dst8++ = *p_Src8++;
        size--;
    }


    while((PTR_TO_UINT(p_Dst8) & 7) && size)
    {
        *p_Dst8++ = *p_Src8++;
        size--;
    }


    leftAlign = (uint32_t)((PTR_TO_UINT(p_Src8) & 7) << 3);
    rightAlign = 64 - leftAlign;


    if (leftAlign == 0)
    {

        pSrc64 = (uint64_t*)(p_Src8);
        pDst64 = (uint64_t*)(p_Dst8);
        while (size >> 3)
        {
            *pDst64++ = *pSrc64++;
            size -= 8;
        }
        p_Src8 = (uint8_t*)(pSrc64);
        p_Dst8 = (uint8_t*)(pDst64);
    }
    else
    {

        pSrc64 = (uint64_t*)(p_Src8 - (leftAlign >> 3));
        pDst64 = (uint64_t*)(p_Dst8);
        lastWord = *pSrc64++;
        while(size >> 4)
        {
            currWord = *pSrc64;
            *pDst64 = (lastWord << leftAlign) | (currWord >> rightAlign);
            lastWord = currWord;
            pSrc64++;
            pDst64++;
            size -= 8;
        }
        p_Dst8 = (uint8_t*)(pDst64);
        p_Src8 = (uint8_t*)(pSrc64) - 8 + (leftAlign >> 3);
    }


    while (size--)
        *p_Dst8++ = *p_Src8++;

    return pDst;
}
