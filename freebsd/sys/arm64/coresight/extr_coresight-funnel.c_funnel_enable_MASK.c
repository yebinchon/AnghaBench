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
struct funnel_softc {int /*<<< orphan*/  res; } ;
struct endpoint {int reg; } ;
struct coresight_event {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNCTL_HOLDTIME_MASK ; 
 int FUNCTL_HOLDTIME_SHIFT ; 
 int /*<<< orphan*/  FUNNEL_FUNCTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct funnel_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
	struct funnel_softc *sc;
	uint32_t reg;

	sc = FUNC2(dev);

	reg = FUNC0(sc->res, FUNNEL_FUNCTL);
	reg &= ~(FUNCTL_HOLDTIME_MASK);
	reg |= (7 << FUNCTL_HOLDTIME_SHIFT);
	reg |= (1 << endp->reg);
	FUNC1(sc->res, FUNNEL_FUNCTL, reg);

	return (0);
}