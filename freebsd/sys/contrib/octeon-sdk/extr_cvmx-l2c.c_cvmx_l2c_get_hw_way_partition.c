
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_L2C_SPAR4 ;
 int CVMX_L2C_WPAR_IOBX (int ) ;
 int OCTEON_CN6XXX ;
 int OCTEON_CNF7XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_read_csr (int ) ;

int cvmx_l2c_get_hw_way_partition(void)
{
    if (OCTEON_IS_MODEL(OCTEON_CN6XXX) || OCTEON_IS_MODEL(OCTEON_CNF7XXX))
        return cvmx_read_csr(CVMX_L2C_WPAR_IOBX(0)) & 0xffff;
    else
        return cvmx_read_csr(CVMX_L2C_SPAR4) & (0xFF);
}
