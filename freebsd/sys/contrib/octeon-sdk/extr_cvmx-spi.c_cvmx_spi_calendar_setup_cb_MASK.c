#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_20__ ;
typedef  struct TYPE_31__   TYPE_1__ ;
typedef  struct TYPE_30__   TYPE_19__ ;
typedef  struct TYPE_29__   TYPE_18__ ;
typedef  struct TYPE_28__   TYPE_17__ ;
typedef  struct TYPE_27__   TYPE_16__ ;
typedef  struct TYPE_26__   TYPE_15__ ;
typedef  struct TYPE_25__   TYPE_14__ ;
typedef  struct TYPE_24__   TYPE_13__ ;
typedef  struct TYPE_23__   TYPE_12__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {int len; int m; } ;
struct TYPE_22__ {scalar_t__ u64; TYPE_10__ s; } ;
typedef  TYPE_11__ cvmx_stxx_spi4_stat_t ;
struct TYPE_39__ {int alpha; int max_t; } ;
struct TYPE_23__ {scalar_t__ u64; TYPE_8__ s; } ;
typedef  TYPE_12__ cvmx_stxx_spi4_dat_t ;
struct TYPE_40__ {int oddpar; int /*<<< orphan*/  prt3; int /*<<< orphan*/  prt2; int /*<<< orphan*/  prt1; int /*<<< orphan*/  prt0; } ;
struct TYPE_24__ {scalar_t__ u64; TYPE_9__ s; } ;
typedef  TYPE_13__ cvmx_stxx_spi4_calx_t ;
struct TYPE_35__ {scalar_t__ mintrn; scalar_t__ igntpa; } ;
struct TYPE_25__ {scalar_t__ u64; TYPE_4__ s; } ;
typedef  TYPE_14__ cvmx_stxx_arb_ctl_t ;
struct TYPE_34__ {int len; int m; } ;
struct TYPE_26__ {scalar_t__ u64; TYPE_3__ s; } ;
typedef  TYPE_15__ cvmx_srxx_spi4_stat_t ;
struct TYPE_33__ {int oddpar; int /*<<< orphan*/  prt3; int /*<<< orphan*/  prt2; int /*<<< orphan*/  prt1; int /*<<< orphan*/  prt0; } ;
struct TYPE_27__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef  TYPE_16__ cvmx_srxx_spi4_calx_t ;
struct TYPE_31__ {int prts; scalar_t__ inf_en; scalar_t__ st_en; } ;
struct TYPE_28__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef  TYPE_17__ cvmx_srxx_com_ctl_t ;
typedef  int cvmx_spi_mode_t ;
struct TYPE_37__ {int thresh; } ;
struct TYPE_29__ {scalar_t__ u64; TYPE_6__ s; } ;
typedef  TYPE_18__ cvmx_gmxx_tx_spi_thresh_t ;
struct TYPE_36__ {int max1; int max2; scalar_t__ slice; } ;
struct TYPE_30__ {scalar_t__ u64; TYPE_5__ s; } ;
typedef  TYPE_19__ cvmx_gmxx_tx_spi_max_t ;
struct TYPE_38__ {scalar_t__ cont_pkt; scalar_t__ tpa_clr; } ;
struct TYPE_32__ {scalar_t__ u64; TYPE_7__ s; } ;
typedef  TYPE_20__ cvmx_gmxx_tx_spi_ctl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int CVMX_SPI_MODE_RX_HALFPLEX ; 
 int CVMX_SPI_MODE_TX_HALFPLEX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC12(int interface, cvmx_spi_mode_t mode, int num_ports)
{
    int port;
    int index;
    if (mode & CVMX_SPI_MODE_RX_HALFPLEX)
    {
        cvmx_srxx_com_ctl_t srxx_com_ctl;
        cvmx_srxx_spi4_stat_t srxx_spi4_stat;

        // SRX0 number of Ports
        srxx_com_ctl.u64 = 0;
        srxx_com_ctl.s.prts = num_ports - 1;
        srxx_com_ctl.s.st_en = 0;
        srxx_com_ctl.s.inf_en = 0;
        FUNC11(FUNC3(interface), srxx_com_ctl.u64);

        // SRX0 Calendar Table. This round robbins through all ports
        port = 0;
        index = 0;
        while (port < num_ports)
        {
            cvmx_srxx_spi4_calx_t srxx_spi4_calx;
            srxx_spi4_calx.u64 = 0;
            srxx_spi4_calx.s.prt0 = port++;
            srxx_spi4_calx.s.prt1 = port++;
            srxx_spi4_calx.s.prt2 = port++;
            srxx_spi4_calx.s.prt3 = port++;
            srxx_spi4_calx.s.oddpar = ~(FUNC10(srxx_spi4_calx.u64) & 1);
            FUNC11(FUNC4(index, interface), srxx_spi4_calx.u64);
            index++;
        }
        srxx_spi4_stat.u64 = 0;
        srxx_spi4_stat.s.len = num_ports;
        srxx_spi4_stat.s.m = 1;
        FUNC11(FUNC5(interface), srxx_spi4_stat.u64);
    }

    if (mode & CVMX_SPI_MODE_TX_HALFPLEX)
    {
        cvmx_stxx_arb_ctl_t stxx_arb_ctl;
        cvmx_gmxx_tx_spi_max_t gmxx_tx_spi_max;
        cvmx_gmxx_tx_spi_thresh_t gmxx_tx_spi_thresh;
        cvmx_gmxx_tx_spi_ctl_t gmxx_tx_spi_ctl;
        cvmx_stxx_spi4_stat_t stxx_spi4_stat;
        cvmx_stxx_spi4_dat_t stxx_spi4_dat;

        // STX0 Config
        stxx_arb_ctl.u64 = 0;
        stxx_arb_ctl.s.igntpa = 0;
        stxx_arb_ctl.s.mintrn = 0;
        FUNC11(FUNC6(interface), stxx_arb_ctl.u64);

        gmxx_tx_spi_max.u64 = 0;
        gmxx_tx_spi_max.s.max1 = 8;
        gmxx_tx_spi_max.s.max2 = 4;
        gmxx_tx_spi_max.s.slice = 0;
        FUNC11(FUNC1(interface), gmxx_tx_spi_max.u64);

        gmxx_tx_spi_thresh.u64 = 0;
        gmxx_tx_spi_thresh.s.thresh = 4;
        FUNC11(FUNC2(interface), gmxx_tx_spi_thresh.u64);

        gmxx_tx_spi_ctl.u64 = 0;
        gmxx_tx_spi_ctl.s.tpa_clr = 0;
        gmxx_tx_spi_ctl.s.cont_pkt = 0;
        FUNC11(FUNC0(interface), gmxx_tx_spi_ctl.u64);

        // STX0 Training Control
        stxx_spi4_dat.u64 = 0;
        stxx_spi4_dat.s.alpha = 32;    /*Minimum needed by dynamic alignment*/
        stxx_spi4_dat.s.max_t = 0xFFFF;  /*Minimum interval is 0x20*/
        FUNC11(FUNC8(interface), stxx_spi4_dat.u64);

        // STX0 Calendar Table. This round robbins through all ports
        port = 0;
        index = 0;
        while (port < num_ports)
        {
            cvmx_stxx_spi4_calx_t stxx_spi4_calx;
            stxx_spi4_calx.u64 = 0;
            stxx_spi4_calx.s.prt0 = port++;
            stxx_spi4_calx.s.prt1 = port++;
            stxx_spi4_calx.s.prt2 = port++;
            stxx_spi4_calx.s.prt3 = port++;
            stxx_spi4_calx.s.oddpar = ~(FUNC10(stxx_spi4_calx.u64) & 1);
            FUNC11(FUNC7(index, interface), stxx_spi4_calx.u64);
            index++;
        }
        stxx_spi4_stat.u64 = 0;
        stxx_spi4_stat.s.len = num_ports;
        stxx_spi4_stat.s.m = 1;
        FUNC11(FUNC9(interface), stxx_spi4_stat.u64);
    }

    return 0;
}