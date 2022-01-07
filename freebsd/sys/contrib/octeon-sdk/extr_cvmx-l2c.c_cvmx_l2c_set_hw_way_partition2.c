
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_L2C_WPAR_IOBX (int) ;
 int OCTEON_CN68XX ;
 int OCTEON_IS_MODEL (int ) ;
 int cvmx_l2c_get_num_assoc () ;
 int cvmx_write_csr (int ,int) ;

int cvmx_l2c_set_hw_way_partition2(uint32_t mask)
{
    uint32_t valid_mask;

        if (!OCTEON_IS_MODEL(OCTEON_CN68XX))
            return -1;

    valid_mask = (0x1 << cvmx_l2c_get_num_assoc()) - 1;
    mask &= valid_mask;
        cvmx_write_csr(CVMX_L2C_WPAR_IOBX(1), mask);
        return 0;
}
