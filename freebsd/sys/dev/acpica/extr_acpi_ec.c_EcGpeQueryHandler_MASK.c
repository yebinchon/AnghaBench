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
struct acpi_ec_softc {int /*<<< orphan*/  ec_sci_pend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_ec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *Context)
{
    struct acpi_ec_softc *sc = (struct acpi_ec_softc *)Context;
    int pending;

    FUNC1(Context != NULL, ("EcGpeQueryHandler called with NULL"));

    do {
	/* Read the current pending count */
	pending = FUNC3(&sc->ec_sci_pend);

	/* Call GPE handler function */
	FUNC0(sc);

	/*
	 * Try to reset the pending count to zero. If this fails we
	 * know another GPE event has occurred while handling the
	 * current GPE event and need to loop.
	 */
    } while (!FUNC2(&sc->ec_sci_pend, pending, 0));
}