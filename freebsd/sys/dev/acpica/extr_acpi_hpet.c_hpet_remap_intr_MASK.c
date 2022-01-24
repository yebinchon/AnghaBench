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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct hpet_timer {scalar_t__ irq; } ;
struct hpet_softc {int num_timers; int /*<<< orphan*/  mem_res; struct hpet_timer* t; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct hpet_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hpet_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct hpet_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, device_t child, u_int irq)
{
	struct hpet_softc *sc = FUNC5(dev);
	struct hpet_timer *t;
	uint64_t addr;
	uint32_t data;
	int error, i;

	for (i = 0; i < sc->num_timers; i++) {
		t = &sc->t[i];
		if (t->irq != irq)
			continue;
		error = FUNC2(
		    FUNC4(FUNC4(dev)), dev,
		    irq, &addr, &data);
		if (error)
			return (error);
		FUNC6(sc); /* Stop timer to avoid interrupt loss. */
		FUNC3(sc->mem_res, FUNC0(i), addr);
		FUNC3(sc->mem_res, FUNC1(i), data);
		FUNC7(sc);
		return (0);
	}
	return (ENOENT);
}