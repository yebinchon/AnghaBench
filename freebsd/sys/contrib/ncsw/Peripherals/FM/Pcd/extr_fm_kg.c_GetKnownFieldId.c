
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint8_t GetKnownFieldId(uint32_t bitMask)
{
    uint8_t cnt = 0;

    while (bitMask)
        if (bitMask & 0x80000000)
            break;
        else
        {
            cnt++;
            bitMask <<= 1;
        }
    return cnt;

}
