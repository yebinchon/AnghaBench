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
struct acpi_ec_softc {int /*<<< orphan*/  ec_sci_pend; int /*<<< orphan*/  ec_gencount; } ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int EC_STATUS ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_REENABLE_GPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int EC_EVENT_SCI ; 
 int FUNC3 (struct acpi_ec_softc*) ; 
 int /*<<< orphan*/  EcGpeQueryHandler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KTR_ACPI ; 
 int /*<<< orphan*/  OSL_GPE_HANDLER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_ec_softc*) ; 

__attribute__((used)) static UINT32
FUNC10(ACPI_HANDLE GpeDevice, UINT32 GpeNumber, void *Context)
{
    struct acpi_ec_softc *sc = Context;
    ACPI_STATUS		       Status;
    EC_STATUS		       EcStatus;

    FUNC4(Context != NULL, ("EcGpeHandler called with NULL"));
    FUNC2(KTR_ACPI, "ec gpe handler start");

    /*
     * Notify EcWaitEvent() that the status register is now fresh.  If we
     * didn't do this, it wouldn't be possible to distinguish an old IBE
     * from a new one, for example when doing a write transaction (writing
     * address and then data values.)
     */
    FUNC5(&sc->ec_gencount, 1);
    FUNC9(sc);

    /*
     * If the EC_SCI bit of the status register is set, queue a query handler.
     * It will run the query and _Qxx method later, under the lock.
     */
    EcStatus = FUNC3(sc);
    if ((EcStatus & EC_EVENT_SCI) &&
	FUNC6(&sc->ec_sci_pend, 1) == 0) {
	FUNC2(KTR_ACPI, "ec gpe queueing query handler");
	Status = FUNC1(OSL_GPE_HANDLER, EcGpeQueryHandler, Context);
	if (FUNC0(Status)) {
	    FUNC8("EcGpeHandler: queuing GPE query handler failed\n");
	    FUNC7(&sc->ec_sci_pend, 0);
	}
    }
    return (ACPI_REENABLE_GPE);
}