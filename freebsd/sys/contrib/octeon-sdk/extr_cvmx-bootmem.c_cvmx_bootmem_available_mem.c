
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cvmx_bootmem_phy_available_mem (int ) ;

uint64_t cvmx_bootmem_available_mem(uint64_t min_block_size)
{
    return(cvmx_bootmem_phy_available_mem(min_block_size));
}
