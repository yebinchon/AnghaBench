
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int cvmx_fau_op_size_t ;


 int CVMX_FAU_BITS_INEVAL ;
 int CVMX_FAU_BITS_LEN ;
 int CVMX_FAU_BITS_REGISTER ;
 int CVMX_FAU_BITS_SCRADDR ;
 int CVMX_FAU_BITS_SIZE ;
 int CVMX_FAU_BITS_TAGWAIT ;
 int CVMX_FAU_LOAD_IO_ADDRESS ;
 int cvmx_build_bits (int ,int) ;

__attribute__((used)) static inline uint64_t __cvmx_fau_iobdma_data(uint64_t scraddr, int64_t value, uint64_t tagwait,
                                          cvmx_fau_op_size_t size, uint64_t reg)
{
    return (CVMX_FAU_LOAD_IO_ADDRESS |
                      cvmx_build_bits(CVMX_FAU_BITS_SCRADDR, scraddr>>3) |
                      cvmx_build_bits(CVMX_FAU_BITS_LEN, 1) |
                      cvmx_build_bits(CVMX_FAU_BITS_INEVAL, value) |
                      cvmx_build_bits(CVMX_FAU_BITS_TAGWAIT, tagwait) |
                      cvmx_build_bits(CVMX_FAU_BITS_SIZE, size) |
                      cvmx_build_bits(CVMX_FAU_BITS_REGISTER, reg));
}
