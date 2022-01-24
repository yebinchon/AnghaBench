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
 int /*<<< orphan*/  FUNC0 (struct zy7_slcr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  ZY7_SLCR_FPGA_RST_CTRL ; 
 int /*<<< orphan*/  ZY7_SLCR_LVL_SHFTR_EN ; 
 int /*<<< orphan*/  ZY7_SLCR_LVL_SHFTR_EN_ALL ; 
 int /*<<< orphan*/  FUNC3 (struct zy7_slcr_softc*) ; 
 struct zy7_slcr_softc* zy7_slcr_softc_p ; 
 int /*<<< orphan*/  FUNC4 (struct zy7_slcr_softc*) ; 

void
FUNC5(int en_level_shifters)
{
	struct zy7_slcr_softc *sc = zy7_slcr_softc_p;

	if (!sc)
		return;

	FUNC1(sc);

	/* Unlock SLCR registers. */
	FUNC4(sc);

	if (en_level_shifters)
		/* Enable level shifters. */
		FUNC0(sc, ZY7_SLCR_LVL_SHFTR_EN, ZY7_SLCR_LVL_SHFTR_EN_ALL);

	/* Deassert top level output resets. */
	FUNC0(sc, ZY7_SLCR_FPGA_RST_CTRL, 0);

	/* Lock SLCR registers. */
	FUNC3(sc);

	FUNC2(sc);
}