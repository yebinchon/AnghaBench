
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cvmx_build_mask (int) ;

__attribute__((used)) static inline uint64_t cvmx_build_bits(uint64_t high_bit, uint64_t low_bit, uint64_t value)
{
    return ((value & cvmx_build_mask(high_bit - low_bit + 1)) << low_bit);
}
