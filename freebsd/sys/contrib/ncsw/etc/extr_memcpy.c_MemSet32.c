
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint32_t ;


 int PTR_TO_UINT (void**) ;

void * MemSet32(void* pDst, uint8_t val, uint32_t size)
{
    uint32_t val32;
    uint32_t *p_Dst32;
    uint8_t *p_Dst8;

    p_Dst8 = (uint8_t*)(pDst);


    val32 = (uint32_t) val;
    val32 |= (val32 << 8);
    val32 |= (val32 << 16);


    while((PTR_TO_UINT(p_Dst8) & 3) && size)
    {
        *p_Dst8++ = val;
        size--;
    }


    p_Dst32 = (uint32_t*)(p_Dst8);
    while (size >> 2)
    {
        *p_Dst32++ = val32;
        size -= 4;
    }


    p_Dst8 = (uint8_t*)(p_Dst32);
    while (size--)
        *p_Dst8++ = val;

    return pDst;
}
