
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ena; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_tra_ctl_t ;


 int CVMX_L2C_TADS ;
 int CVMX_TRAX_CTL (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static inline void cvmx_tra_enable(int enable)
{
    cvmx_tra_ctl_t control;
    int tad;

    for (tad = 0; tad < CVMX_L2C_TADS; tad++)
    {
        control.u64 = cvmx_read_csr(CVMX_TRAX_CTL(tad));
        control.s.ena = enable;
        cvmx_write_csr(CVMX_TRAX_CTL(tad), control.u64);
        cvmx_read_csr(CVMX_TRAX_CTL(tad));
    }
}
