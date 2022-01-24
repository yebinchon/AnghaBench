#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timecounter {struct dmtpps_softc* tc_priv; } ;
struct TYPE_3__ {int capcount; } ;
struct dmtpps_softc {int /*<<< orphan*/  pps_mtx; TYPE_1__ pps_state; } ;

/* Variables and functions */
 int FUNC0 (struct dmtpps_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dmtpps_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMT_IRQSTATUS ; 
 int /*<<< orphan*/  DMT_IRQSTATUS_RAW ; 
 int DMT_IRQ_TCAR ; 
 int /*<<< orphan*/  DMT_TCAR1 ; 
 int /*<<< orphan*/  PPS_CAPTUREASSERT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct timecounter *tc)
{
	struct dmtpps_softc *sc;

	sc = tc->tc_priv;

	/*
	 * If a new value has been latched we've got a PPS event.  Capture the
	 * timecounter data, then override the capcount field (pps_capture()
	 * populates it from the current DMT_TCRR register) with the latched
	 * value from the TCAR1 register.
	 *
	 * Note that we don't have the TCAR interrupt enabled, but the hardware
	 * still provides the status bits in the "RAW" status register even when
	 * they're masked from generating an irq.  However, when clearing the
	 * TCAR status to re-arm the capture for the next second, we have to
	 * write to the IRQ status register, not the RAW register.  Quirky.
	 *
	 * We do not need to hold a lock while capturing the pps data, because
	 * it is captured into an area of the pps_state struct which is read
	 * only by pps_event().  We do need to hold a lock while calling
	 * pps_event(), because it manipulates data which is also accessed from
	 * the ioctl(2) context by userland processes.
	 */
	if (FUNC0(sc, DMT_IRQSTATUS_RAW) & DMT_IRQ_TCAR) {
		FUNC4(&sc->pps_state);
		sc->pps_state.capcount = FUNC0(sc, DMT_TCAR1);
		FUNC1(sc, DMT_IRQSTATUS, DMT_IRQ_TCAR);

		FUNC2(&sc->pps_mtx);
		FUNC5(&sc->pps_state, PPS_CAPTUREASSERT);
		FUNC3(&sc->pps_mtx);
	}
}