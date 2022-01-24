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
typedef  int /*<<< orphan*/  u_int ;
struct acpi_ec_softc {int /*<<< orphan*/  ec_dev; int /*<<< orphan*/  ec_gencount; } ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_COMMAND_READ ; 
 int /*<<< orphan*/  EC_EVENT_INPUT_BUFFER_EMPTY ; 
 int /*<<< orphan*/  EC_EVENT_OUTPUT_BUFFER_FULL ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_ec_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_ec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_ec_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_ec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_ec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_ACPI ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ec ; 

__attribute__((used)) static ACPI_STATUS
FUNC10(struct acpi_ec_softc *sc, UINT8 Address, UINT8 *Data)
{
    ACPI_STATUS	status;
    u_int gen_count;
    int retry;

    FUNC1(ec);
    FUNC3(KTR_ACPI, "ec read from %#x", Address);

    for (retry = 0; retry < 2; retry++) {
	status = FUNC7(sc, EC_COMMAND_READ);
	if (FUNC0(status))
	    return (status);

	gen_count = sc->ec_gencount;
	FUNC5(sc, Address);
	status = FUNC8(sc, EC_EVENT_OUTPUT_BUFFER_FULL, gen_count);
	if (FUNC2(status)) {
	    *Data = FUNC4(sc);
	    return (AE_OK);
	}
	if (FUNC0(FUNC6(sc, "retr_check",
	    EC_EVENT_INPUT_BUFFER_EMPTY)))
	    break;
    }
    FUNC9(sc->ec_dev, "EcRead: failed waiting to get data\n");
    return (status);
}