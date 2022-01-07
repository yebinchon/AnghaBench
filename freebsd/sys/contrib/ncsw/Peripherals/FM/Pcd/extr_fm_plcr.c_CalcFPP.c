
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t CalcFPP(uint32_t fpp)
{
    if (fpp > 15)
        return 15 - (0x1f - fpp);
    else
        return 16 + fpp;
}
