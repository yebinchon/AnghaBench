
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;



void * MemSet8(void* pDst, int c, uint32_t size)
{
    uint32_t i;

    for(i = 0; i < size; ++i)
        *(((uint8_t*)(pDst)) + i) = (uint8_t)(c);

    return pDst;
}
