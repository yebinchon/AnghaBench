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
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_COMMAND_WRITE ; 
 int /*<<< orphan*/  EC_EVENT_INPUT_BUFFER_EMPTY ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_ec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_ec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_ec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_ACPI ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ec ; 

__attribute__((used)) static ACPI_STATUS
FUNC7(struct acpi_ec_softc *sc, UINT8 Address, UINT8 Data)
{
    ACPI_STATUS	status;
    u_int gen_count;

    FUNC1(ec);
    FUNC2(KTR_ACPI, "ec write to %#x, data %#x", Address, Data);

    status = FUNC4(sc, EC_COMMAND_WRITE);
    if (FUNC0(status))
	return (status);

    gen_count = sc->ec_gencount;
    FUNC3(sc, Address);
    status = FUNC5(sc, EC_EVENT_INPUT_BUFFER_EMPTY, gen_count);
    if (FUNC0(status)) {
	FUNC6(sc->ec_dev, "EcWrite: failed waiting for sent address\n");
	return (status);
    }

    gen_count = sc->ec_gencount;
    FUNC3(sc, Data);
    status = FUNC5(sc, EC_EVENT_INPUT_BUFFER_EMPTY, gen_count);
    if (FUNC0(status)) {
	FUNC6(sc->ec_dev, "EcWrite: failed waiting for sent data\n");
	return (status);
    }

    return (AE_OK);
}