
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ena_pko; int store_be; int ena_dwb; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_pko_reg_flags_t ;


 int CVMX_HELPER_CFG_OPT_USE_DWB ;
 int CVMX_PKO_REG_FLAGS ;
 int cvmx_dprintf (char*) ;
 int cvmx_helper_cfg_opt_get (int ) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

void cvmx_pko_enable(void)
{
    cvmx_pko_reg_flags_t flags;

    flags.u64 = cvmx_read_csr(CVMX_PKO_REG_FLAGS);
    if (flags.s.ena_pko)
        cvmx_dprintf("Warning: Enabling PKO when PKO already enabled.\n");

    flags.s.ena_dwb = cvmx_helper_cfg_opt_get(CVMX_HELPER_CFG_OPT_USE_DWB);
    flags.s.ena_pko = 1;
    flags.s.store_be =1;



    cvmx_write_csr(CVMX_PKO_REG_FLAGS, flags.u64);
}
