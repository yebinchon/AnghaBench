
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 unsigned long long SIZE_OFFSET ;
 unsigned long long cvmx_read64_uint64 (unsigned long long) ;

__attribute__((used)) static uint64_t cvmx_bootmem_phy_get_size(uint64_t addr)
{
    return(cvmx_read64_uint64((addr + SIZE_OFFSET) | (1ull << 63)));
}
