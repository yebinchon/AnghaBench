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
struct tmc_softc {scalar_t__ dev_type; int /*<<< orphan*/  res; struct coresight_event* event; } ;
struct endpoint {int dummy; } ;
struct TYPE_2__ {scalar_t__ low; scalar_t__ offset; int /*<<< orphan*/  cycle; } ;
struct coresight_event {TYPE_1__ etr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ CORESIGHT_ETF ; 
 int STS_FULL ; 
 int /*<<< orphan*/  TMC_RWP ; 
 int /*<<< orphan*/  TMC_STS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tmc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
	struct tmc_softc *sc;
	uint32_t cur_ptr;

	sc = FUNC1(dev);

	if (sc->dev_type == CORESIGHT_ETF)
		return (0);

	/*
	 * Ensure the event we are reading information for
	 * is currently configured one.
	 */
	if (sc->event != event)
		return (0);

	if (FUNC0(sc->res, TMC_STS) & STS_FULL) {
		event->etr.offset = 0;
		event->etr.cycle++;
		FUNC3(dev);
		FUNC2(dev);
	} else {
		cur_ptr = FUNC0(sc->res, TMC_RWP);
		event->etr.offset = (cur_ptr - event->etr.low);
	}

	return (0);
}