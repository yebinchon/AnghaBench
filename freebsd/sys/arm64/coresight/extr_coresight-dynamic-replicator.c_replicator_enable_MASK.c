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
struct replicator_softc {int /*<<< orphan*/  res; } ;
struct endpoint {scalar_t__ reg; } ;
struct coresight_event {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  REPLICATOR_IDFILTER0 ; 
 int /*<<< orphan*/  REPLICATOR_IDFILTER1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct replicator_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
	struct replicator_softc *sc;

	sc = FUNC1(dev);

	/* Enable the port. Keep the other port disabled */
	if (endp->reg == 0) {
		FUNC0(sc->res, REPLICATOR_IDFILTER0, 0x00);
		FUNC0(sc->res, REPLICATOR_IDFILTER1, 0xff);
	} else {
		FUNC0(sc->res, REPLICATOR_IDFILTER0, 0xff);
		FUNC0(sc->res, REPLICATOR_IDFILTER1, 0x00);
	}

	return (0);
}