
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int capture; int select; } ;
struct TYPE_7__ {void* u64; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_ciu_qlm_jtgd_t ;
struct TYPE_6__ {int mux_sel; int bypass; } ;
struct TYPE_8__ {void* u64; TYPE_2__ s; } ;
typedef TYPE_4__ cvmx_ciu_qlm_jtgc_t ;


 int CVMX_CIU_QLM_JTGC ;
 int CVMX_CIU_QLM_JTGD ;
 int OCTEON_CN56XX_PASS1_X ;
 int OCTEON_CN6XXX ;
 int OCTEON_CNF7XXX ;
 int OCTEON_IS_MODEL (int ) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

void cvmx_helper_qlm_jtag_capture(int qlm)
{
    cvmx_ciu_qlm_jtgc_t jtgc;
    cvmx_ciu_qlm_jtgd_t jtgd;

    jtgc.u64 = cvmx_read_csr(CVMX_CIU_QLM_JTGC);
    jtgc.s.mux_sel = qlm;
    if (!OCTEON_IS_MODEL(OCTEON_CN6XXX) && !OCTEON_IS_MODEL(OCTEON_CNF7XXX))
        jtgc.s.bypass = 1<<qlm;

    cvmx_write_csr(CVMX_CIU_QLM_JTGC, jtgc.u64);
    cvmx_read_csr(CVMX_CIU_QLM_JTGC);

    jtgd.u64 = 0;
    jtgd.s.capture = 1;
    if (!OCTEON_IS_MODEL(OCTEON_CN56XX_PASS1_X))
        jtgd.s.select = 1 << qlm;
    cvmx_write_csr(CVMX_CIU_QLM_JTGD, jtgd.u64);
    do
    {
        jtgd.u64 = cvmx_read_csr(CVMX_CIU_QLM_JTGD);
    } while (jtgd.s.capture);
}
