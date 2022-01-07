
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t cvmx_build_mask(uint64_t bits)
{
    return ~((~0x0ull) << bits);
}
