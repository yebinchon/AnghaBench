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
struct etm_softc {int /*<<< orphan*/  res; } ;
struct endpoint {int dummy; } ;
struct coresight_event {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRCPRGCTLR ; 
 int TRCPRGCTLR_EN ; 
 int /*<<< orphan*/  TRCSTATR ; 
 int TRCSTATR_IDLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct etm_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct coresight_event*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
	struct etm_softc *sc;
	uint32_t reg;

	sc = FUNC2(dev);

	FUNC3(dev, event);

	/* Enable the trace unit */
	FUNC1(sc->res, TRCPRGCTLR, TRCPRGCTLR_EN);

	/* Wait for an IDLE bit to be LOW */
	do {
		reg = FUNC0(sc->res, TRCSTATR);
	} while ((reg & TRCSTATR_IDLE) == 1);

	if ((FUNC0(sc->res, TRCPRGCTLR) & TRCPRGCTLR_EN) == 0)
		FUNC4("etm is not enabled\n");

	return (0);
}