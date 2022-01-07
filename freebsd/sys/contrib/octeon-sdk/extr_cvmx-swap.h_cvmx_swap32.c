
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ x ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t cvmx_swap32(uint32_t x)
{
    return ((uint32_t)((((uint32_t)(x) & (uint32_t)0x000000ffUL) << 24) |
                       (((uint32_t)(x) & (uint32_t)0x0000ff00UL) << 8) |
                       (((uint32_t)(x) & (uint32_t)0x00ff0000UL) >> 8) |
                       (((uint32_t)(x) & (uint32_t)0xff000000UL) >> 24) ));
}
