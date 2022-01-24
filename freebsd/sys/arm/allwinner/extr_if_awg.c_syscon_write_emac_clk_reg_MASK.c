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
struct awg_softc {int /*<<< orphan*/ ** res; int /*<<< orphan*/ * syscon; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_CLK_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t _RES_SYSCON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct awg_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, uint32_t val)
{
	struct awg_softc *sc;

	sc = FUNC2(dev);
	if (sc->syscon != NULL)
		FUNC0(sc->syscon, EMAC_CLK_REG, val);
	else if (sc->res[_RES_SYSCON] != NULL)
		FUNC1(sc->res[_RES_SYSCON], 0, val);
}