
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qlm_spd; } ;
struct TYPE_4__ {TYPE_1__ s; int u64; } ;
typedef TYPE_2__ cvmx_mio_qlmx_cfg_t ;


 int CVMX_MIO_QLMX_CFG (int) ;
 int OCTEON_CN66XX_PASS1_X ;
 int OCTEON_CN68XX_PASS1_X ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_qlm_jtag_set (int,int,char*,int) ;
 int cvmx_read_csr (int ) ;

void __cvmx_qlm_speed_tweak(void)
{
    cvmx_mio_qlmx_cfg_t qlm_cfg;
    int num_qlms = 0;
    int qlm;

    if (OCTEON_IS_MODEL(OCTEON_CN68XX_PASS1_X))
        num_qlms = 5;
    else if (OCTEON_IS_MODEL(OCTEON_CN66XX_PASS1_X))
        num_qlms = 3;
    else
        return;


    for (qlm = 0; qlm < num_qlms; qlm++)
    {

 qlm_cfg.u64 = cvmx_read_csr(CVMX_MIO_QLMX_CFG(qlm));


        if ((qlm_cfg.s.qlm_spd == 5) || (qlm_cfg.s.qlm_spd == 12) ||
            (qlm_cfg.s.qlm_spd == 0) || (qlm_cfg.s.qlm_spd == 6) ||
            (qlm_cfg.s.qlm_spd == 11))
        {
            cvmx_qlm_jtag_set(qlm, -1, "rx_cap_gen2", 0x1);
            cvmx_qlm_jtag_set(qlm, -1, "rx_eq_gen2", 0x8);
        }
    }
}
