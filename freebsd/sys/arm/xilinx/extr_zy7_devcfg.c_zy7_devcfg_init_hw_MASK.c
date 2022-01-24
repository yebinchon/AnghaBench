#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct zy7_devcfg_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zy7_devcfg_softc*) ; 
 int FUNC1 (struct zy7_devcfg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_devcfg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZY7_DEVCFG_CTRL ; 
 int ZY7_DEVCFG_CTRL_DAP_EN_MASK ; 
 int ZY7_DEVCFG_CTRL_DBGEN ; 
 int ZY7_DEVCFG_CTRL_NIDEN ; 
 int ZY7_DEVCFG_CTRL_PCAP_MODE ; 
 int ZY7_DEVCFG_CTRL_PCAP_PR ; 
 int ZY7_DEVCFG_CTRL_PCFG_PROG_B ; 
 int ZY7_DEVCFG_CTRL_RESVD_WR11 ; 
 int ZY7_DEVCFG_CTRL_SPIDEN ; 
 int ZY7_DEVCFG_CTRL_SPNIDEN ; 
 int ZY7_DEVCFG_CTRL_USER_MODE ; 
 int /*<<< orphan*/  ZY7_DEVCFG_MCTRL ; 
 int ZY7_DEVCFG_MCTRL_INT_PCAP_LPBK ; 

__attribute__((used)) static void
FUNC3(struct zy7_devcfg_softc *sc)
{

	FUNC0(sc);

	/* Set devcfg control register. */
	FUNC2(sc, ZY7_DEVCFG_CTRL,
	    ZY7_DEVCFG_CTRL_PCFG_PROG_B |
	    ZY7_DEVCFG_CTRL_PCAP_PR |
	    ZY7_DEVCFG_CTRL_PCAP_MODE |
	    ZY7_DEVCFG_CTRL_USER_MODE |
	    ZY7_DEVCFG_CTRL_RESVD_WR11 |
	    ZY7_DEVCFG_CTRL_SPNIDEN |
	    ZY7_DEVCFG_CTRL_SPIDEN |
	    ZY7_DEVCFG_CTRL_NIDEN |
	    ZY7_DEVCFG_CTRL_DBGEN |
	    ZY7_DEVCFG_CTRL_DAP_EN_MASK);

	/* Turn off internal PCAP loopback. */
	FUNC2(sc, ZY7_DEVCFG_MCTRL, FUNC1(sc, ZY7_DEVCFG_MCTRL) &
	    ~ZY7_DEVCFG_MCTRL_INT_PCAP_LPBK);
}