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
typedef  int uint32_t ;
struct tmc_softc {scalar_t__ dev_type; int /*<<< orphan*/ * event; int /*<<< orphan*/  nev; } ;
struct endpoint {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct coresight_event {TYPE_1__ etr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ CORESIGHT_ETF ; 
 scalar_t__ CORESIGHT_ETR ; 
 int ETR_FLAG_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct tmc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
	struct tmc_softc *sc;
	uint32_t nev;

	sc = FUNC2(dev);

	/* ETF configuration is static */
	if (sc->dev_type == CORESIGHT_ETF)
		return;

	FUNC0(sc->dev_type == CORESIGHT_ETR, ("Wrong dev_type"));

	if (event->etr.flags & ETR_FLAG_RELEASE) {
		event->etr.flags &= ~ETR_FLAG_RELEASE;
		nev = FUNC1(&sc->nev, -1);
		if (nev == 1) {
			FUNC3(dev);
			sc->event = NULL;
		}
	}
}