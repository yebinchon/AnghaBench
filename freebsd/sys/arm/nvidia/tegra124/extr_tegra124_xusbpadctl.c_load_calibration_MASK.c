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
struct padctl_softc {int /*<<< orphan*/  hs_term_range_adj; int /*<<< orphan*/  hs_squelch_level; int /*<<< orphan*/  hs_iref_cap; int /*<<< orphan*/  hs_curr_level_123; int /*<<< orphan*/  hs_curr_level_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_XUSB_CALIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct padctl_softc *sc)
{
	uint32_t reg;

	/* All XUSB pad calibrations are packed into single dword.*/
	reg = FUNC5(FUSE_XUSB_CALIB);
	sc->hs_curr_level_0 = FUNC0(reg);
	sc->hs_curr_level_123 = FUNC1(reg);
	sc->hs_iref_cap = FUNC2(reg);
	sc->hs_squelch_level = FUNC3(reg);
	sc->hs_term_range_adj = FUNC4(reg);
}