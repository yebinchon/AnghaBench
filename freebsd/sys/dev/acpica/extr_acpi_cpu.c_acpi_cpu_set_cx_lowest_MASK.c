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
struct acpi_cpu_softc {int cpu_cx_lowest; int cpu_non_c3; int /*<<< orphan*/  cpu_cx_stats; TYPE_1__* cpu_cx_states; scalar_t__ cpu_cx_count; int /*<<< orphan*/  cpu_cx_lowest_lim; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_STATE_C3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cpu ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct acpi_cpu_softc *sc)
{
    int i;

    FUNC0(cpu);
    sc->cpu_cx_lowest = FUNC2(sc->cpu_cx_lowest_lim, sc->cpu_cx_count - 1);

    /* If not disabling, cache the new lowest non-C3 state. */
    sc->cpu_non_c3 = 0;
    for (i = sc->cpu_cx_lowest; i >= 0; i--) {
	if (sc->cpu_cx_states[i].type < ACPI_STATE_C3) {
	    sc->cpu_non_c3 = i;
	    break;
	}
    }

    /* Reset the statistics counters. */
    FUNC1(sc->cpu_cx_stats, sizeof(sc->cpu_cx_stats));
    return (0);
}