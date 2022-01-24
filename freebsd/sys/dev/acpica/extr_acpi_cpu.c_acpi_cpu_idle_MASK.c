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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct acpi_cx {int trans_lat; scalar_t__ type; scalar_t__ mwait_bm_avoidance; int /*<<< orphan*/ * p_lvlx; int /*<<< orphan*/  mwait_hint; scalar_t__ do_mwait; } ;
struct acpi_cpu_softc {int cpu_prev_sleep; int cpu_cx_lowest; int cpu_non_c2; int cpu_non_c3; int /*<<< orphan*/ * cpu_cx_stats; struct acpi_cx* cpu_cx_states; } ;
typedef  int sbintime_t ;
struct TYPE_2__ {scalar_t__ td_critnest; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITREG_ARB_DISABLE ; 
 int /*<<< orphan*/  ACPI_BITREG_BUS_MASTER_RLD ; 
 int /*<<< orphan*/  ACPI_BITREG_BUS_MASTER_STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ACPI_STATE_C0 ; 
 scalar_t__ ACPI_STATE_C1 ; 
 scalar_t__ ACPI_STATE_C3 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int CPU_QUIRK_NO_BM_CTRL ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ cpu_disable_c2_sleep ; 
 scalar_t__ cpu_disable_c3_sleep ; 
 int cpu_quirks ; 
 struct acpi_cpu_softc** cpu_softc ; 
 int FUNC13 () ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_1__* curthread ; 
 int hz ; 
 scalar_t__ FUNC15 (struct acpi_cpu_softc*) ; 
 int FUNC16 (int,int) ; 

__attribute__((used)) static void
FUNC17(sbintime_t sbt)
{
    struct	acpi_cpu_softc *sc;
    struct	acpi_cx *cx_next;
    uint64_t	cputicks;
    uint32_t	start_time, end_time;
    ACPI_STATUS	status;
    int		bm_active, cx_next_idx, i, us;

    /*
     * Look up our CPU id to get our softc.  If it's NULL, we'll use C1
     * since there is no ACPI processor object for this CPU.  This occurs
     * for logical CPUs in the HTT case.
     */
    sc = cpu_softc[FUNC9(cpuid)];
    if (sc == NULL) {
	FUNC11();
	return;
    }

    /* If disabled, take the safe path. */
    if (FUNC15(sc)) {
	FUNC11();
	return;
    }

    /* Find the lowest state that has small enough latency. */
    us = sc->cpu_prev_sleep;
    if (sbt >= 0 && us > (sbt >> 12))
	us = (sbt >> 12);
    cx_next_idx = 0;
    if (cpu_disable_c2_sleep)
	i = FUNC16(sc->cpu_cx_lowest, sc->cpu_non_c2);
    else if (cpu_disable_c3_sleep)
	i = FUNC16(sc->cpu_cx_lowest, sc->cpu_non_c3);
    else
	i = sc->cpu_cx_lowest;
    for (; i >= 0; i--) {
	if (sc->cpu_cx_states[i].trans_lat * 3 <= us) {
	    cx_next_idx = i;
	    break;
	}
    }

    /*
     * Check for bus master activity.  If there was activity, clear
     * the bit and use the lowest non-C3 state.  Note that the USB
     * driver polling for new devices keeps this bit set all the
     * time if USB is loaded.
     */
    if ((cpu_quirks & CPU_QUIRK_NO_BM_CTRL) == 0 &&
	cx_next_idx > sc->cpu_non_c3) {
	status = FUNC5(ACPI_BITREG_BUS_MASTER_STATUS, &bm_active);
	if (FUNC2(status) && bm_active != 0) {
	    FUNC6(ACPI_BITREG_BUS_MASTER_STATUS, 1);
	    cx_next_idx = sc->cpu_non_c3;
	}
    }

    /* Select the next state and update statistics. */
    cx_next = &sc->cpu_cx_states[cx_next_idx];
    sc->cpu_cx_stats[cx_next_idx]++;
    FUNC8(cx_next->type != ACPI_STATE_C0, ("acpi_cpu_idle: C0 sleep"));

    /*
     * Execute HLT (or equivalent) and wait for an interrupt.  We can't
     * precisely calculate the time spent in C1 since the place we wake up
     * is an ISR.  Assume we slept no more then half of quantum, unless
     * we are called inside critical section, delaying context switch.
     */
    if (cx_next->type == ACPI_STATE_C1) {
	cputicks = FUNC14();
	if (cx_next->p_lvlx != NULL) {
	    /* C1 I/O then Halt */
	    FUNC7(cx_next->p_lvlx, 1);
	}
	if (cx_next->do_mwait)
	    FUNC12(cx_next->mwait_hint);
	else
	    FUNC11();
	end_time = ((FUNC14() - cputicks) << 20) / FUNC13();
	if (curthread->td_critnest == 0)
		end_time = FUNC16(end_time, 500000 / hz);
	/* acpi_cpu_c1() returns with interrupts enabled. */
	if (cx_next->do_mwait)
	    FUNC0();
	sc->cpu_prev_sleep = (sc->cpu_prev_sleep * 3 + end_time) / 4;
	return;
    }

    /*
     * For C3, disable bus master arbitration and enable bus master wake
     * if BM control is available, otherwise flush the CPU cache.
     */
    if (cx_next->type == ACPI_STATE_C3 || cx_next->mwait_bm_avoidance) {
	if ((cpu_quirks & CPU_QUIRK_NO_BM_CTRL) == 0) {
	    FUNC6(ACPI_BITREG_ARB_DISABLE, 1);
	    FUNC6(ACPI_BITREG_BUS_MASTER_RLD, 1);
	} else
	    FUNC1();
    }

    /*
     * Read from P_LVLx to enter C2(+), checking time spent asleep.
     * Use the ACPI timer for measuring sleep time.  Since we need to
     * get the time very close to the CPU start/stop clock logic, this
     * is the only reliable time source.
     */
    if (cx_next->type == ACPI_STATE_C3) {
	FUNC3(&start_time);
	cputicks = 0;
    } else {
	start_time = 0;
	cputicks = FUNC14();
    }
    if (cx_next->do_mwait)
	FUNC12(cx_next->mwait_hint);
    else
	FUNC7(cx_next->p_lvlx, 1);

    /*
     * Read the end time twice.  Since it may take an arbitrary time
     * to enter the idle state, the first read may be executed before
     * the processor has stopped.  Doing it again provides enough
     * margin that we are certain to have a correct value.
     */
    FUNC3(&end_time);
    if (cx_next->type == ACPI_STATE_C3) {
	FUNC3(&end_time);
	FUNC4(start_time, end_time, &end_time);
    } else
	end_time = ((FUNC14() - cputicks) << 20) / FUNC13();

    /* Enable bus master arbitration and disable bus master wakeup. */
    if ((cx_next->type == ACPI_STATE_C3 || cx_next->mwait_bm_avoidance) &&
      (cpu_quirks & CPU_QUIRK_NO_BM_CTRL) == 0) {
	FUNC6(ACPI_BITREG_ARB_DISABLE, 0);
	FUNC6(ACPI_BITREG_BUS_MASTER_RLD, 0);
    }
    FUNC0();

    sc->cpu_prev_sleep = (sc->cpu_prev_sleep * 3 + FUNC10(end_time)) / 4;
}