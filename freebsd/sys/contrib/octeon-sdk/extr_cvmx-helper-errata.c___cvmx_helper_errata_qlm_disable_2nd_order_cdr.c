
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ select; } ;
struct TYPE_4__ {TYPE_1__ s; int u64; } ;
typedef TYPE_2__ cvmx_ciu_qlm_jtgd_t ;


 int CVMX_CIU_QLM_JTGD ;
 int cvmx_helper_qlm_jtag_init () ;
 int cvmx_helper_qlm_jtag_shift (int,int,int) ;
 int cvmx_helper_qlm_jtag_shift_zeros (int,int) ;
 int cvmx_helper_qlm_jtag_update (int) ;
 int cvmx_read_csr (int ) ;

void __cvmx_helper_errata_qlm_disable_2nd_order_cdr(int qlm)
{
    int lane;

    cvmx_ciu_qlm_jtgd_t qlm_jtgd;
    qlm_jtgd.u64 = cvmx_read_csr(CVMX_CIU_QLM_JTGD);
    if (qlm_jtgd.s.select != 0)
        return;

    cvmx_helper_qlm_jtag_init();

    for (lane=0; lane<4; lane++)
    {



        cvmx_helper_qlm_jtag_shift_zeros(qlm, 63 - 0 + 1);

        cvmx_helper_qlm_jtag_shift(qlm, 67 - 64 + 1, 3);

        cvmx_helper_qlm_jtag_shift_zeros(qlm, 76 - 68 + 1);

        cvmx_helper_qlm_jtag_shift(qlm, 77 - 77 + 1, 1);

        cvmx_helper_qlm_jtag_shift_zeros(qlm, 267 - 78 + 1);
    }
    cvmx_helper_qlm_jtag_update(qlm);
}
