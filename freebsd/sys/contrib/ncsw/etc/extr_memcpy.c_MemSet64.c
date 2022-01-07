
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int PTR_TO_UINT (void**) ;

void * MemSet64(void* pDst, uint8_t val, uint32_t size)
{
    uint64_t val64;
    uint64_t *pDst64;
    uint8_t *p_Dst8;

    p_Dst8 = (uint8_t*)(pDst);


    val64 = (uint64_t) val;
    val64 |= (val64 << 8);
    val64 |= (val64 << 16);
    val64 |= (val64 << 24);
    val64 |= (val64 << 32);


    while((PTR_TO_UINT(p_Dst8) & 7) && size)
    {
        *p_Dst8++ = val;
        size--;
    }


    pDst64 = (uint64_t*)(p_Dst8);
    while (size >> 4)
    {
        *pDst64++ = val64;
        size -= 8;
    }


    p_Dst8 = (uint8_t*)(pDst64);
    while (size--)
        *p_Dst8++ = val;

    return pDst;
}
