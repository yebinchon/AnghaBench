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
typedef  int EC_STATUS ;
typedef  int /*<<< orphan*/  EC_EVENT ;
typedef  int EC_COMMAND ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
#define  EC_COMMAND_BURST_DISABLE 132 
#define  EC_COMMAND_BURST_ENABLE 131 
#define  EC_COMMAND_QUERY 130 
#define  EC_COMMAND_READ 129 
#define  EC_COMMAND_WRITE 128 
 int /*<<< orphan*/  EC_EVENT_INPUT_BUFFER_EMPTY ; 
 int /*<<< orphan*/  EC_EVENT_OUTPUT_BUFFER_FULL ; 
 int EC_FLAG_BURST_MODE ; 
 int FUNC4 (struct acpi_ec_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_ec_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_ec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_ACPI ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ec ; 
 int /*<<< orphan*/  ec_burst_mode ; 

__attribute__((used)) static ACPI_STATUS
FUNC8(struct acpi_ec_softc *sc, EC_COMMAND cmd)
{
    ACPI_STATUS	status;
    EC_EVENT	event;
    EC_STATUS	ec_status;
    u_int	gen_count;

    FUNC1(ec);

    /* Don't use burst mode if user disabled it. */
    if (!ec_burst_mode && cmd == EC_COMMAND_BURST_ENABLE)
	return (AE_ERROR);

    /* Decide what to wait for based on command type. */
    switch (cmd) {
    case EC_COMMAND_READ:
    case EC_COMMAND_WRITE:
    case EC_COMMAND_BURST_DISABLE:
	event = EC_EVENT_INPUT_BUFFER_EMPTY;
	break;
    case EC_COMMAND_QUERY:
    case EC_COMMAND_BURST_ENABLE:
	event = EC_EVENT_OUTPUT_BUFFER_FULL;
	break;
    default:
	FUNC7(sc->ec_dev, "EcCommand: invalid command %#x\n", cmd);
	return (AE_BAD_PARAMETER);
    }

    /*
     * Ensure empty input buffer before issuing command.
     * Use generation count of zero to force a quick check.
     */
    status = FUNC6(sc, EC_EVENT_INPUT_BUFFER_EMPTY, 0);
    if (FUNC0(status))
	return (status);

    /* Run the command and wait for the chosen event. */
    FUNC3(KTR_ACPI, "ec running command %#x", cmd);
    gen_count = sc->ec_gencount;
    FUNC5(sc, cmd);
    status = FUNC6(sc, event, gen_count);
    if (FUNC2(status)) {
	/* If we succeeded, burst flag should now be present. */
	if (cmd == EC_COMMAND_BURST_ENABLE) {
	    ec_status = FUNC4(sc);
	    if ((ec_status & EC_FLAG_BURST_MODE) == 0)
		status = AE_ERROR;
	}
    } else
	FUNC7(sc->ec_dev, "EcCommand: no response to %#x\n", cmd);
    return (status);
}