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
typedef  int uint32_t ;
struct pl310_softc {int dummy; } ;
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  PL310_DATA_RAM_CTRL ; 
 int /*<<< orphan*/  PL310_POWER_CTRL ; 
 int /*<<< orphan*/  PL310_TAG_RAM_CTRL ; 
 int POWER_CTRL_ENABLE_GATING ; 
 int POWER_CTRL_ENABLE_STANDBY ; 
 int FUNC0 (struct pl310_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pl310_softc*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pl310_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(platform_t plat, struct pl310_softc *sc)
{
	uint32_t reg;

	/*
	 * Enable power saving modes:
	 *  - Dynamic Gating stops the clock when the controller is idle.
	 *  - Standby stops the clock when the cores are in WFI mode.
	 */
	reg = FUNC0(sc, PL310_POWER_CTRL);
	reg |= POWER_CTRL_ENABLE_GATING | POWER_CTRL_ENABLE_STANDBY;
	FUNC2(sc, PL310_POWER_CTRL, reg);

	FUNC1(sc, PL310_TAG_RAM_CTRL,  4, 2, 3);
	FUNC1(sc, PL310_DATA_RAM_CTRL, 4, 2, 3);
}