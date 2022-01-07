
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rst_done; int ipd_en; int len_m8; } ;
struct TYPE_4__ {void* u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_ipd_ctl_status_t ;


 int CVMX_IPD_CTL_STATUS ;
 int OCTEON_CN38XX_PASS2 ;
 int OCTEON_CN68XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_dprintf (char*) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

__attribute__((used)) static inline void cvmx_ipd_enable(void)
{
    cvmx_ipd_ctl_status_t ipd_reg;

    ipd_reg.u64 = cvmx_read_csr(CVMX_IPD_CTL_STATUS);




    if (OCTEON_IS_MODEL(OCTEON_CN68XX))
        while(ipd_reg.s.rst_done != 0)
            ipd_reg.u64 = cvmx_read_csr(CVMX_IPD_CTL_STATUS);

    if (ipd_reg.s.ipd_en)
        cvmx_dprintf("Warning: Enabling IPD when IPD already enabled.\n");

    ipd_reg.s.ipd_en = 1;






    cvmx_write_csr(CVMX_IPD_CTL_STATUS, ipd_reg.u64);
}
