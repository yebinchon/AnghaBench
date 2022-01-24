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
typedef  int /*<<< orphan*/  uint32_t ;
struct pl310_softc {int dummy; } ;
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_CTRL_DATA_PREFETCH ; 
 int /*<<< orphan*/  AUX_CTRL_INSTR_PREFETCH ; 
 int /*<<< orphan*/  PL310_AUX_CTRL ; 
 int /*<<< orphan*/  PL310_PREFETCH_CTRL ; 
 int /*<<< orphan*/  PREFETCH_CTRL_DATA_PREFETCH ; 
 int /*<<< orphan*/  PREFETCH_CTRL_INSTR_PREFETCH ; 
 int /*<<< orphan*/  WRITE_AUXCTRL_REG ; 
 int /*<<< orphan*/  WRITE_PREFETCH_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct pl310_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(platform_t plat, struct pl310_softc *sc)
{
	uint32_t aux, prefetch;

	aux = FUNC0(sc, PL310_AUX_CTRL);
	prefetch = FUNC0(sc, PL310_PREFETCH_CTRL);

	/*
	 * Disable instruction prefetch
	 */
	prefetch &= ~PREFETCH_CTRL_INSTR_PREFETCH;
	aux &= ~AUX_CTRL_INSTR_PREFETCH;

	// prefetch &= ~PREFETCH_CTRL_DATA_PREFETCH;
	// aux &= ~AUX_CTRL_DATA_PREFETCH;

	/*
	 * Make sure data prefetch is on
	 */
	prefetch |= PREFETCH_CTRL_DATA_PREFETCH;
	aux |= AUX_CTRL_DATA_PREFETCH;

	/*
	 * TODO: add tunable for prefetch offset
	 * and experiment with performance
	 */

	FUNC1(aux, 0, WRITE_AUXCTRL_REG);
	FUNC1(prefetch, 0, WRITE_PREFETCH_CTRL_REG);
}