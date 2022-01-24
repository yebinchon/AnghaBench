#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct awusbphy_softc {int /*<<< orphan*/ ** pmu; TYPE_1__* phy_conf; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int pmu_unk1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PMU_AHB_INCR4 ; 
 int PMU_AHB_INCR8 ; 
 int PMU_AHB_INCRX_ALIGN ; 
 int /*<<< orphan*/  PMU_IRQ_ENABLE ; 
 int PMU_ULPI_BYPASS ; 
 int /*<<< orphan*/  PMU_UNK_H3 ; 
 int /*<<< orphan*/  PMU_UNK_H3_CLR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct awusbphy_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, int phyno)
{
	struct awusbphy_softc *sc;

	sc = FUNC2(dev);

	if (sc->pmu[phyno] == NULL)
		return;

	if (sc->phy_conf->pmu_unk1 == true)
		FUNC0(sc->pmu[phyno], PMU_UNK_H3, PMU_UNK_H3_CLR);

	FUNC1(sc->pmu[phyno], PMU_IRQ_ENABLE, PMU_ULPI_BYPASS |
	    PMU_AHB_INCR8 | PMU_AHB_INCR4 | PMU_AHB_INCRX_ALIGN);
}