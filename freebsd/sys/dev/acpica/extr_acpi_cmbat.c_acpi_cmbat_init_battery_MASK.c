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
struct acpi_cmbat_softc {int /*<<< orphan*/  bif; int /*<<< orphan*/  bst; int /*<<< orphan*/  bst_lastupdated; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int ACPI_CMBAT_RETRY_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  cmbat ; 
 struct acpi_cmbat_softc* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
    struct acpi_cmbat_softc *sc;
    int		retry, valid;
    device_t	dev;

    dev = (device_t)arg;
    FUNC2(dev, FUNC9(dev),
		"battery initialization start\n");

    /*
     * Try repeatedly to get valid data from the battery.  Since the
     * embedded controller isn't always ready just after boot, we may have
     * to wait a while.
     */
    for (retry = 0; retry < ACPI_CMBAT_RETRY_MAX; retry++, FUNC3(10000)) {
	/*
	 * Batteries on DOCK can be ejected w/ DOCK during retrying.
	 *
	 * If there is a valid softc pointer the device may be in
	 * attaching, attached or detaching state. If the state is
	 * different from attached retry getting the device state
	 * until it becomes stable. This solves a race if the ACPI
	 * notification handler is called during attach, because
	 * device_is_attached() doesn't return non-zero until after
	 * the attach code has been executed.
	 */
	FUNC0(cmbat);
	sc = FUNC10(dev);
	if (sc == NULL) {
	    FUNC1(cmbat);
	    return;
	}

	if (!FUNC4(dev) || !FUNC11(dev)) {
	    FUNC1(cmbat);
	    continue;
	}

	/*
	 * Only query the battery if this is the first try or the specific
	 * type of info is still invalid.
	 */
	if (retry == 0 || !FUNC6(&sc->bst)) {
	    FUNC12(&sc->bst_lastupdated);
	    FUNC8(dev);
	}
	if (retry == 0 || !FUNC5(&sc->bif))
	    FUNC7(dev);

	valid = FUNC6(&sc->bst) &&
	    FUNC5(&sc->bif);
	FUNC1(cmbat);

	if (valid)
	    break;
    }

    if (retry == ACPI_CMBAT_RETRY_MAX) {
	FUNC2(dev, FUNC9(dev),
		    "battery initialization failed, giving up\n");
    } else {
	FUNC2(dev, FUNC9(dev),
		    "battery initialization done, tried %d times\n", retry + 1);
    }
}