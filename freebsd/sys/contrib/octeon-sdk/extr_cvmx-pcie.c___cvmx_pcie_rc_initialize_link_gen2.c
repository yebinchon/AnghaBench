
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int lnk_enb; } ;
struct TYPE_10__ {int u64; TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_pemx_ctl_status_t ;
struct TYPE_9__ {int rtl; } ;
struct TYPE_11__ {void* u32; TYPE_3__ s; } ;
typedef TYPE_5__ cvmx_pciercx_cfg448_t ;
struct TYPE_8__ {scalar_t__ dlla; int lt; int nlw; } ;
struct TYPE_12__ {TYPE_2__ s; void* u32; } ;
typedef TYPE_6__ cvmx_pciercx_cfg032_t ;


 int CVMX_CLOCK_CORE ;
 int CVMX_PCIERCX_CFG032 (int) ;
 int CVMX_PCIERCX_CFG448 (int) ;
 int CVMX_PEMX_CTL_STATUS (int) ;
 scalar_t__ cvmx_clock_get_rate (int ) ;
 scalar_t__ cvmx_get_cycle () ;
 void* cvmx_pcie_cfgx_read (int,int ) ;
 int cvmx_pcie_cfgx_write (int,int ,void*) ;
 int cvmx_read_csr (int ) ;
 int cvmx_wait (int) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static int __cvmx_pcie_rc_initialize_link_gen2(int pcie_port)
{
    uint64_t start_cycle;
    cvmx_pemx_ctl_status_t pem_ctl_status;
    cvmx_pciercx_cfg032_t pciercx_cfg032;
    cvmx_pciercx_cfg448_t pciercx_cfg448;


    pem_ctl_status.u64 = cvmx_read_csr(CVMX_PEMX_CTL_STATUS(pcie_port));
    pem_ctl_status.s.lnk_enb = 1;
    cvmx_write_csr(CVMX_PEMX_CTL_STATUS(pcie_port), pem_ctl_status.u64);


    start_cycle = cvmx_get_cycle();
    do
    {
        if (cvmx_get_cycle() - start_cycle > cvmx_clock_get_rate(CVMX_CLOCK_CORE))
            return -1;
        cvmx_wait(10000);
        pciercx_cfg032.u32 = cvmx_pcie_cfgx_read(pcie_port, CVMX_PCIERCX_CFG032(pcie_port));
    } while ((pciercx_cfg032.s.dlla == 0) || (pciercx_cfg032.s.lt == 1));






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
