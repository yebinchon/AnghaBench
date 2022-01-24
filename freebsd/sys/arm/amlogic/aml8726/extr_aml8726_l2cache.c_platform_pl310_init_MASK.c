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

/* Variables and functions */
 int /*<<< orphan*/  AUX_CTRL_DATA_PREFETCH ; 
 int /*<<< orphan*/  AUX_CTRL_INSTR_PREFETCH ; 
 int /*<<< orphan*/  PL310_AUX_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct pl310_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pl310_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct pl310_softc *sc)
{
	uint32_t aux;

	aux = FUNC0(sc, PL310_AUX_CTRL);

	/*
	 * The Amlogic Linux platform code enables via AUX:
	 *
	 *   Early BRESP
	 *   Full Line of Zero (which must match processor setting)
	 *   Data Prefetch
	 *
	 * and additionally on the m6 enables:
	 *
	 *   Instruction Prefetch
	 *
	 * For the moment we only enable Data Prefetch ...
	 * further refinements can happen as things mature.
	 */

	/*
	 * Disable instruction prefetch.
	 */
	aux &= ~AUX_CTRL_INSTR_PREFETCH;

	/*
	 * Enable data prefetch.
	 */
	aux |= AUX_CTRL_DATA_PREFETCH;

	FUNC1(sc, PL310_AUX_CTRL, aux);
}