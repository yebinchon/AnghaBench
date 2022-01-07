
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int uint64_t ;
struct TYPE_16__ {scalar_t__ qlm_cfg; int lane_swp; int lnk_enb; } ;
struct TYPE_19__ {void* u64; TYPE_3__ s; } ;
typedef TYPE_6__ cvmx_pescx_ctl_status_t ;
struct TYPE_15__ {int m_cpl_len_err; } ;
struct TYPE_20__ {void* u32; TYPE_2__ s; } ;
typedef TYPE_7__ cvmx_pciercx_cfg455_t ;
struct TYPE_14__ {int lme; } ;
struct TYPE_21__ {void* u32; TYPE_1__ s; } ;
typedef TYPE_8__ cvmx_pciercx_cfg452_t ;
struct TYPE_18__ {int rtl; } ;
struct TYPE_22__ {void* u32; TYPE_5__ s; } ;
typedef TYPE_9__ cvmx_pciercx_cfg448_t ;
struct TYPE_17__ {scalar_t__ dlla; int nlw; } ;
struct TYPE_12__ {TYPE_4__ s; void* u32; } ;
typedef TYPE_10__ cvmx_pciercx_cfg032_t ;
struct TYPE_13__ {int board_type; } ;



 int CVMX_CLOCK_CORE ;
 int CVMX_PCIERCX_CFG032 (int) ;
 int CVMX_PCIERCX_CFG448 (int) ;
 int CVMX_PCIERCX_CFG452 (int) ;
 int CVMX_PCIERCX_CFG455 (int) ;
 int CVMX_PESCX_CTL_STATUS (int) ;
 int CVMX_PEXP_NPEI_INT_SUM ;
 int OCTEON_CN52XX ;
 int OCTEON_CN52XX_PASS1_0 ;
 int OCTEON_CN52XX_PASS1_X ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_helper_errata_qlm_disable_2nd_order_cdr (int ) ;
 int cvmx_clock_get_rate (int ) ;
 int cvmx_dprintf (char*,int) ;
 int cvmx_get_cycle () ;
 void* cvmx_pcie_cfgx_read (int,int ) ;
 int cvmx_pcie_cfgx_write (int,int ,void*) ;
 void* cvmx_read_csr (int ) ;
 TYPE_11__* cvmx_sysinfo_get () ;
 int cvmx_wait (int) ;
 int cvmx_write_csr (int ,void*) ;

__attribute__((used)) static int __cvmx_pcie_rc_initialize_link_gen1(int pcie_port)
{
    uint64_t start_cycle;
    cvmx_pescx_ctl_status_t pescx_ctl_status;
    cvmx_pciercx_cfg452_t pciercx_cfg452;
    cvmx_pciercx_cfg032_t pciercx_cfg032;
    cvmx_pciercx_cfg448_t pciercx_cfg448;


    pciercx_cfg452.u32 = cvmx_pcie_cfgx_read(pcie_port, CVMX_PCIERCX_CFG452(pcie_port));
    pescx_ctl_status.u64 = cvmx_read_csr(CVMX_PESCX_CTL_STATUS(pcie_port));
    if (pescx_ctl_status.s.qlm_cfg == 0)
    {

        pciercx_cfg452.s.lme = 0xf;
    }
    else
    {

        pciercx_cfg452.s.lme = 0x7;
    }
    cvmx_pcie_cfgx_write(pcie_port, CVMX_PCIERCX_CFG452(pcie_port), pciercx_cfg452.u32);




    if (OCTEON_IS_MODEL(OCTEON_CN52XX_PASS1_X))
    {
        cvmx_pciercx_cfg455_t pciercx_cfg455;
        pciercx_cfg455.u32 = cvmx_pcie_cfgx_read(pcie_port, CVMX_PCIERCX_CFG455(pcie_port));
        pciercx_cfg455.s.m_cpl_len_err = 1;
        cvmx_pcie_cfgx_write(pcie_port, CVMX_PCIERCX_CFG455(pcie_port), pciercx_cfg455.u32);
    }


    if (OCTEON_IS_MODEL(OCTEON_CN52XX) && (pcie_port == 1))
    {
      switch (cvmx_sysinfo_get()->board_type)
      {




 default:
   pescx_ctl_status.s.lane_swp = 1;
   break;
      }
      cvmx_write_csr(CVMX_PESCX_CTL_STATUS(pcie_port),pescx_ctl_status.u64);
    }


    pescx_ctl_status.u64 = cvmx_read_csr(CVMX_PESCX_CTL_STATUS(pcie_port));
    pescx_ctl_status.s.lnk_enb = 1;
    cvmx_write_csr(CVMX_PESCX_CTL_STATUS(pcie_port), pescx_ctl_status.u64);


    if (OCTEON_IS_MODEL(OCTEON_CN52XX_PASS1_0))
        __cvmx_helper_errata_qlm_disable_2nd_order_cdr(0);


    start_cycle = cvmx_get_cycle();
    do
    {
        if (cvmx_get_cycle() - start_cycle > 100*cvmx_clock_get_rate(CVMX_CLOCK_CORE))
        {
            cvmx_dprintf("PCIe: Port %d link timeout\n", pcie_port);
            return -1;
        }
        cvmx_wait(50000);
        pciercx_cfg032.u32 = cvmx_pcie_cfgx_read(pcie_port, CVMX_PCIERCX_CFG032(pcie_port));
    } while (pciercx_cfg032.s.dlla == 0);


    cvmx_write_csr(CVMX_PEXP_NPEI_INT_SUM, cvmx_read_csr(CVMX_PEXP_NPEI_INT_SUM));






    pciercx_cfg448.u32 = cvmx_pcie_cfgx_read(pcie_port, CVMX_PCIERCX_CFG448(pcie_port));
    switch (pciercx_cfg032.s.nlw)
    {
        case 1:
            pciercx_cfg448.s.rtl = 1677;
            break;
        case 2:
            pciercx_cfg448.s.rtl = 867;
            break;
        case 4:
            pciercx_cfg448.s.rtl = 462;
            break;
        case 8:
            pciercx_cfg448.s.rtl = 258;
            break;
    }
    cvmx_pcie_cfgx_write(pcie_port, CVMX_PCIERCX_CFG448(pcie_port), pciercx_cfg448.u32);

    return 0;
}
