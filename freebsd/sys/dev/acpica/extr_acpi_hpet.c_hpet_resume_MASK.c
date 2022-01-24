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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct hpet_timer {scalar_t__ irq; scalar_t__ mode; int next; int caps; int div; int num; } ;
struct hpet_softc {int num_timers; scalar_t__ legacy_route; int freq; int /*<<< orphan*/  mem_res; struct hpet_timer* t; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  HPET_ISR ; 
 int /*<<< orphan*/  HPET_MAIN_COUNTER ; 
 int HPET_TCAP_PER_INT ; 
 int HPET_TCNF_TYPE ; 
 int HPET_TCNF_VAL_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*,int*) ; 
 scalar_t__ TIMER_PERIODIC ; 
 scalar_t__ TIMER_STOPPED ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct hpet_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hpet_softc*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct hpet_softc *sc;
	struct hpet_timer *t;
	int i;

	/* Re-enable the timer after a resume to keep the clock advancing. */
	sc = FUNC8(dev);
	FUNC9(sc);
	/* Restart event timers that were running on suspend. */
	for (i = 0; i < sc->num_timers; i++) {
		t = &sc->t[i];
#ifdef DEV_APIC
		if (t->irq >= 0 && (sc->legacy_route == 0 || i >= 2)) {
			uint64_t addr;
			uint32_t data;

			if (PCIB_MAP_MSI(
			    device_get_parent(device_get_parent(dev)), dev,
			    t->irq, &addr, &data) == 0) {
				bus_write_4(sc->mem_res,
				    HPET_TIMER_FSB_ADDR(i), addr);
				bus_write_4(sc->mem_res,
				    HPET_TIMER_FSB_VAL(i), data);
			}
		}
#endif
		if (t->mode == TIMER_STOPPED)
			continue;
		t->next = FUNC5(sc->mem_res, HPET_MAIN_COUNTER);
		if (t->mode == TIMER_PERIODIC &&
		    (t->caps & HPET_TCAP_PER_INT) != 0) {
			t->caps |= HPET_TCNF_TYPE;
			t->next += t->div;
			FUNC6(sc->mem_res, FUNC0(t->num),
			    t->caps | HPET_TCNF_VAL_SET);
			FUNC6(sc->mem_res, FUNC1(t->num),
			    t->next);
			FUNC5(sc->mem_res, FUNC1(t->num));
			FUNC6(sc->mem_res, FUNC1(t->num),
			    t->div);
		} else {
			t->next += sc->freq / 1024;
			FUNC6(sc->mem_res, FUNC1(t->num),
			    t->next);
		}
		FUNC6(sc->mem_res, HPET_ISR, 1 << t->num);
		FUNC6(sc->mem_res, FUNC0(t->num), t->caps);
	}
	return (0);
}