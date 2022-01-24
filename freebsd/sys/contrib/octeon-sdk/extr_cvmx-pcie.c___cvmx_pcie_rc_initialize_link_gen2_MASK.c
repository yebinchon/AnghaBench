#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {int lnk_enb; } ;
struct TYPE_10__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_4__ cvmx_pemx_ctl_status_t ;
struct TYPE_9__ {int rtl; } ;
struct TYPE_11__ {void* u32; TYPE_3__ s; } ;
typedef  TYPE_5__ cvmx_pciercx_cfg448_t ;
struct TYPE_8__ {scalar_t__ dlla; int lt; int nlw; } ;
struct TYPE_12__ {TYPE_2__ s; void* u32; } ;
typedef  TYPE_6__ cvmx_pciercx_cfg032_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CLOCK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(int pcie_port)
{
    uint64_t start_cycle;
    cvmx_pemx_ctl_status_t pem_ctl_status;
    cvmx_pciercx_cfg032_t pciercx_cfg032;
    cvmx_pciercx_cfg448_t pciercx_cfg448;

    /* Bring up the link */
    pem_ctl_status.u64 = FUNC7(FUNC2(pcie_port));
    pem_ctl_status.s.lnk_enb = 1;
    FUNC9(FUNC2(pcie_port), pem_ctl_status.u64);

    /* Wait for the link to come up */
    start_cycle = FUNC4();
    do
    {
        if (FUNC4() - start_cycle > FUNC3(CVMX_CLOCK_CORE))
            return -1;
        FUNC8(10000);
        pciercx_cfg032.u32 = FUNC5(pcie_port, FUNC0(pcie_port));
    } while ((pciercx_cfg032.s.dlla == 0) || (pciercx_cfg032.s.lt == 1));

    /* Update the Replay Time Limit. Empirically, some PCIe devices take a
        little longer to respond than expected under load. As a workaround for
        this we configure the Replay Time Limit to the value expected for a 512
        byte MPS instead of our actual 256 byte MPS. The numbers below are
        directly from the PCIe spec table 3-4 */
    pciercx_cfg448.u32 = FUNC5(pcie_port, FUNC1(pcie_port));
    switch (pciercx_cfg032.s.nlw)
    {
        case 1: /* 1 lane */
            pciercx_cfg448.s.rtl = 1677;
            break;
        case 2: /* 2 lanes */
            pciercx_cfg448.s.rtl = 867;
            break;
        case 4: /* 4 lanes */
            pciercx_cfg448.s.rtl = 462;
            break;
        case 8: /* 8 lanes */
            pciercx_cfg448.s.rtl = 258;
            break;
    }
    FUNC6(pcie_port, FUNC1(pcie_port), pciercx_cfg448.u32);

    return 0;
}