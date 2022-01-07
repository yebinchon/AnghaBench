
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int CVMX_TAG_SW_BITS ;
 int cvmx_build_mask (int) ;

__attribute__((used)) static inline uint32_t cvmx_pow_tag_get_sw_bits(uint64_t tag)
{
    return((tag >> (32 - CVMX_TAG_SW_BITS)) & cvmx_build_mask(CVMX_TAG_SW_BITS));
}
