
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_L2C_SPAR0 ;
 int CVMX_L2C_SPAR1 ;
 int CVMX_L2C_SPAR2 ;
 int CVMX_L2C_SPAR3 ;
 int CVMX_L2C_WPAR_PPX (int) ;
 int OCTEON_CN6XXX ;
 int OCTEON_CNF7XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_octeon_num_cores () ;
 int cvmx_read_csr (int ) ;

int cvmx_l2c_get_core_way_partition(uint32_t core)
{
    uint32_t field;


    if (core >= cvmx_octeon_num_cores())
        return -1;

    if (OCTEON_IS_MODEL(OCTEON_CN6XXX) || OCTEON_IS_MODEL(OCTEON_CNF7XXX))
        return (cvmx_read_csr(CVMX_L2C_WPAR_PPX(core)) & 0xffff);





    field = (core & 0x3) * 8;






    switch (core & 0xC) {
    case 0x0:
        return (cvmx_read_csr(CVMX_L2C_SPAR0) & (0xFF << field)) >> field;
    case 0x4:
        return (cvmx_read_csr(CVMX_L2C_SPAR1) & (0xFF << field)) >> field;
    case 0x8:
        return (cvmx_read_csr(CVMX_L2C_SPAR2) & (0xFF << field)) >> field;
    case 0xC:
        return (cvmx_read_csr(CVMX_L2C_SPAR3) & (0xFF << field)) >> field;
    }
    return 0;
}
