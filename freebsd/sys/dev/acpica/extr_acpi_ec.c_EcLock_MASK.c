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
struct acpi_ec_softc {int /*<<< orphan*/  ec_glkhandle; scalar_t__ ec_glk; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_LOCK_TIMEOUT ; 
 int /*<<< orphan*/  ec ; 

__attribute__((used)) static ACPI_STATUS
FUNC3(struct acpi_ec_softc *sc)
{
    ACPI_STATUS	status;

    /* If _GLK is non-zero, acquire the global lock. */
    status = AE_OK;
    if (sc->ec_glk) {
	status = FUNC2(EC_LOCK_TIMEOUT, &sc->ec_glkhandle);
	if (FUNC0(status))
	    return (status);
    }
    FUNC1(ec);
    return (status);
}