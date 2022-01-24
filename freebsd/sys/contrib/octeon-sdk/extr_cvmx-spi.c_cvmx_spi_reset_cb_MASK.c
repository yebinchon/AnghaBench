#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_20__ {int oddpar; } ;
struct TYPE_23__ {void* u64; TYPE_3__ s; } ;
typedef  TYPE_6__ cvmx_stxx_spi4_calx_t ;
struct TYPE_24__ {void* u64; } ;
typedef  TYPE_7__ cvmx_stxx_int_msk_t ;
struct TYPE_19__ {int oddpar; } ;
struct TYPE_25__ {void* u64; TYPE_2__ s; } ;
typedef  TYPE_8__ cvmx_srxx_spi4_calx_t ;
struct TYPE_22__ {int jitter; int clr_boot; int maxdist; int macro_en; int mux_en; scalar_t__ set_boot; scalar_t__ trntest; } ;
struct TYPE_26__ {void* u64; TYPE_5__ s; } ;
typedef  TYPE_9__ cvmx_spxx_trn4_ctl_t ;
struct TYPE_14__ {void* u64; } ;
typedef  TYPE_10__ cvmx_spxx_int_msk_t ;
struct TYPE_15__ {void* u64; } ;
typedef  TYPE_11__ cvmx_spxx_dbg_deskew_ctl_t ;
struct TYPE_21__ {int runbist; int clkdly; int statrcv; int srxdlck; scalar_t__ rcvtrn; scalar_t__ drptrn; scalar_t__ sndtrn; scalar_t__ statdrv; scalar_t__ seetrn; } ;
struct TYPE_16__ {void* u64; TYPE_4__ s; } ;
typedef  TYPE_12__ cvmx_spxx_clk_ctl_t ;
struct TYPE_18__ {scalar_t__ stat2; scalar_t__ stat1; scalar_t__ stat0; } ;
struct TYPE_17__ {TYPE_1__ s; void* u64; } ;
typedef  TYPE_13__ cvmx_spxx_bist_stat_t ;
typedef  int /*<<< orphan*/  cvmx_spi_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CLOCK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*) ; 

int FUNC18(int interface, cvmx_spi_mode_t mode)
{
    cvmx_spxx_dbg_deskew_ctl_t spxx_dbg_deskew_ctl;
    cvmx_spxx_clk_ctl_t spxx_clk_ctl;
    cvmx_spxx_bist_stat_t spxx_bist_stat;
    cvmx_spxx_int_msk_t spxx_int_msk;
    cvmx_stxx_int_msk_t stxx_int_msk;
    cvmx_spxx_trn4_ctl_t spxx_trn4_ctl;
    int index;
    uint64_t MS = FUNC13(CVMX_CLOCK_CORE) / 1000;

    /* Disable SPI error events while we run BIST */
    spxx_int_msk.u64 = FUNC15(FUNC3(interface));
    FUNC17(FUNC3(interface), 0);
    stxx_int_msk.u64 = FUNC15(FUNC9(interface));
    FUNC17(FUNC9(interface), 0);

    /* Run BIST in the SPI interface */
    FUNC17(FUNC6(interface), 0);
    FUNC17(FUNC8(interface), 0);
    spxx_clk_ctl.u64 = 0;
    spxx_clk_ctl.s.runbist = 1;
    FUNC17(FUNC1(interface), spxx_clk_ctl.u64);
    FUNC16 (10 * MS);
    spxx_bist_stat.u64 = FUNC15(FUNC0(interface));
    if (spxx_bist_stat.s.stat0)
        FUNC14("ERROR SPI%d: BIST failed on receive datapath FIFO\n", interface);
    if (spxx_bist_stat.s.stat1)
        FUNC14("ERROR SPI%d: BIST failed on RX calendar table\n", interface);
    if (spxx_bist_stat.s.stat2)
        FUNC14("ERROR SPI%d: BIST failed on TX calendar table\n", interface);

    /* Clear the calendar table after BIST to fix parity errors */
    for (index=0; index<32; index++)
    {
        cvmx_srxx_spi4_calx_t srxx_spi4_calx;
        cvmx_stxx_spi4_calx_t stxx_spi4_calx;

        srxx_spi4_calx.u64 = 0;
        srxx_spi4_calx.s.oddpar = 1;
        FUNC17(FUNC7(index, interface), srxx_spi4_calx.u64);

        stxx_spi4_calx.u64 = 0;
        stxx_spi4_calx.s.oddpar = 1;
        FUNC17(FUNC11(index, interface), stxx_spi4_calx.u64);
    }

    /* Re enable reporting of error interrupts */
    FUNC17(FUNC4(interface), FUNC15(FUNC4(interface)));
    FUNC17(FUNC3(interface), spxx_int_msk.u64);
    FUNC17(FUNC10(interface), FUNC15(FUNC10(interface)));
    FUNC17(FUNC9(interface), stxx_int_msk.u64);

    // Setup the CLKDLY right in the middle
    spxx_clk_ctl.u64 = 0;
    spxx_clk_ctl.s.seetrn = 0;
    spxx_clk_ctl.s.clkdly = 0x10;
    spxx_clk_ctl.s.runbist = 0;
    spxx_clk_ctl.s.statdrv = 0;
    spxx_clk_ctl.s.statrcv = 1; /* This should always be on the opposite edge as statdrv */
    spxx_clk_ctl.s.sndtrn = 0;
    spxx_clk_ctl.s.drptrn = 0;
    spxx_clk_ctl.s.rcvtrn = 0;
    spxx_clk_ctl.s.srxdlck = 0;
    FUNC17(FUNC1(interface), spxx_clk_ctl.u64);
    FUNC16 (100 * MS);

    // Reset SRX0 DLL
    spxx_clk_ctl.s.srxdlck = 1;
    FUNC17(FUNC1(interface), spxx_clk_ctl.u64);

    // Waiting for Inf0 Spi4 RX DLL to lock
    FUNC16 (100 * MS);

    // Enable dynamic alignment
    spxx_trn4_ctl.s.trntest = 0;
    spxx_trn4_ctl.s.jitter = 1;
    spxx_trn4_ctl.s.clr_boot = 1;
    spxx_trn4_ctl.s.set_boot = 0;
    if (FUNC12(OCTEON_CN58XX))
        spxx_trn4_ctl.s.maxdist = 3;
    else
        spxx_trn4_ctl.s.maxdist = 8;
    spxx_trn4_ctl.s.macro_en = 1;
    spxx_trn4_ctl.s.mux_en = 1;
    FUNC17 (FUNC5(interface), spxx_trn4_ctl.u64);

    spxx_dbg_deskew_ctl.u64 = 0;
    FUNC17 (FUNC2(interface), spxx_dbg_deskew_ctl.u64);

    return 0;
}