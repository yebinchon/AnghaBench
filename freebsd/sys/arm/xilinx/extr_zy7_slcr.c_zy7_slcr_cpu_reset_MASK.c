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
struct zy7_slcr_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct zy7_slcr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_slcr_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZY7_SLCR_PSS_RST_CTRL ; 
 int ZY7_SLCR_PSS_RST_CTRL_SOFT_RESET ; 
 int /*<<< orphan*/  ZY7_SLCR_REBOOT_STAT ; 
 struct zy7_slcr_softc* zy7_slcr_softc_p ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_slcr_softc*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct zy7_slcr_softc *sc = zy7_slcr_softc_p;

	/* Unlock SLCR registers. */
	FUNC2(sc);

	/* This has something to do with a work-around so the fsbl will load
	 * the bitstream after soft-reboot.  It's very important.
	 */
	FUNC1(sc, ZY7_SLCR_REBOOT_STAT,
	    FUNC0(sc, ZY7_SLCR_REBOOT_STAT) & 0xf0ffffff);

	/* Soft reset */
	FUNC1(sc, ZY7_SLCR_PSS_RST_CTRL, ZY7_SLCR_PSS_RST_CTRL_SOFT_RESET);

	for (;;)
		;
}