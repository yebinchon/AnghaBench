
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_CIU_FUSE ;
 int cvmx_pop (int) ;
 scalar_t__ cvmx_read_csr (int ) ;

__attribute__((used)) static inline uint32_t cvmx_octeon_num_cores(void)
{
    uint32_t ciu_fuse = (uint32_t)cvmx_read_csr(CVMX_CIU_FUSE) & 0xffffffffull;
    return cvmx_pop(ciu_fuse);
}
