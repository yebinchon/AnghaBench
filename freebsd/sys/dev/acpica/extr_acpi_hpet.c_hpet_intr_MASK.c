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
struct hpet_softc {int useirq; int num_timers; int /*<<< orphan*/ * t; int /*<<< orphan*/  mem_res; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FILTER_STRAY ; 
 int /*<<< orphan*/  HPET_ISR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct hpet_softc *sc = (struct hpet_softc *)arg;
	int i;
	uint32_t val;

	val = FUNC0(sc->mem_res, HPET_ISR);
	if (val) {
		FUNC1(sc->mem_res, HPET_ISR, val);
		val &= sc->useirq;
		for (i = 0; i < sc->num_timers; i++) {
			if ((val & (1 << i)) == 0)
				continue;
			FUNC2(&sc->t[i]);
		}
		return (FILTER_HANDLED);
	}
	return (FILTER_STRAY);
}