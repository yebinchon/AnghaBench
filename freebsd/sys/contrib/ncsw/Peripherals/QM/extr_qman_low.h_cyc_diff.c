
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static __inline__ uint8_t cyc_diff(uint8_t ringsize, uint8_t first, uint8_t last)
{

    if (first <= last)
        return (uint8_t)(last - first);
    return (uint8_t)(ringsize + last - first);
}
