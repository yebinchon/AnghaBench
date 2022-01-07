
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static int GetBERLen(uint8_t* buf)
{
    if (*buf & 0x80)
    {
        if ((*buf & 0x7F) == 1)
            return buf[1];
        else
            return *(uint16_t*)&buf[1];
    }
    else
        return buf[0];
}
