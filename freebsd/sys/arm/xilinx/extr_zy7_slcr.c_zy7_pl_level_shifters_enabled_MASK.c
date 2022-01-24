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
typedef  scalar_t__ uint32_t ;
struct zy7_slcr_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct zy7_slcr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  ZY7_SLCR_LVL_SHFTR_EN ; 
 scalar_t__ ZY7_SLCR_LVL_SHFTR_EN_ALL ; 
 struct zy7_slcr_softc* zy7_slcr_softc_p ; 

int
FUNC3(void)
{
	struct zy7_slcr_softc *sc = zy7_slcr_softc_p;

	uint32_t reg;

	if (!sc)
		return (-1);

	FUNC1(sc);
	reg = FUNC0(sc, ZY7_SLCR_LVL_SHFTR_EN);
	FUNC2(sc);

	return (reg == ZY7_SLCR_LVL_SHFTR_EN_ALL);
}