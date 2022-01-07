
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN63XX_PASS1_X ;
 int OCTEON_CN63XX_PASS2_X ;
 int OCTEON_CN66XX_PASS1_X ;
 int OCTEON_CN68XX_PASS1_X ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_qlm_jtag_set (int,int,char*,int) ;

void __cvmx_qlm_pcie_idle_dac_tweak(void)
{
    int num_qlms = 0;
    int qlm;

    if (OCTEON_IS_MODEL(OCTEON_CN68XX_PASS1_X))
        num_qlms = 5;
    else if (OCTEON_IS_MODEL(OCTEON_CN66XX_PASS1_X))
        num_qlms = 3;
    else if (OCTEON_IS_MODEL(OCTEON_CN63XX_PASS1_X) ||
             OCTEON_IS_MODEL(OCTEON_CN63XX_PASS2_X))
        num_qlms = 3;
    else
        return;


    for (qlm = 0; qlm < num_qlms; qlm++)
        cvmx_qlm_jtag_set(qlm, -1, "idle_dac", 0x2);
}
