
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;



void * MemCpy8(void* pDst, void* pSrc, uint32_t size)
{
    uint32_t i;

    for(i = 0; i < size; ++i)
        *(((uint8_t*)(pDst)) + i) = *(((uint8_t*)(pSrc)) + i);

    return pDst;
}
