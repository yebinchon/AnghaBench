
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int CVMX_L2C_TAG_ADDR_ALIAS_SHIFT ;
 int DR0_END ;
 int DR1_START ;
 int L2_HOLE ;

uint32_t cvmx_l2c_v2_address_to_tag(uint64_t addr)
{




    if ( (addr > ( (256 * 1024 * 1024) -1)) && (addr < (512 * 1024 * 1024)) ) return (uint32_t) (-1);
    if (addr > (512 * 1024 * 1024)) addr = addr - (256 * 1024 * 1024) ;
    addr = addr & 0x7FFFFFFFFULL;
    return (uint32_t )(addr >> CVMX_L2C_TAG_ADDR_ALIAS_SHIFT);
}
