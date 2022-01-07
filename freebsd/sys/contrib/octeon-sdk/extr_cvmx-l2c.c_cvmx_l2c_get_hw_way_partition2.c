
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_L2C_WPAR_IOBX (int) ;
 int OCTEON_CN68XX ;
 int OCTEON_IS_MODEL (int ) ;
 int cvmx_read_csr (int ) ;
 int cvmx_warn (char*) ;

int cvmx_l2c_get_hw_way_partition2(void)
{
        if (!OCTEON_IS_MODEL(OCTEON_CN68XX)) {
            cvmx_warn("only one IOB on this chip");
            return -1;
        }
        return cvmx_read_csr(CVMX_L2C_WPAR_IOBX(1)) & 0xffff;
}
