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
typedef  int uint32_t ;
struct aml8726_mmc_softc {int port; TYPE_1__* cmd; } ;
struct TYPE_2__ {int* resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_MMC_CMD_ARGUMENT_REG ; 
 int AML_MMC_CMD_CMD_HAS_DATA ; 
 int AML_MMC_CMD_RESP_BITS_MASK ; 
 int AML_MMC_CMD_RESP_CRC7_FROM_8 ; 
 int AML_MMC_CMD_RESP_HAS_DATA ; 
 int AML_MMC_CMD_RESP_NO_CRC7 ; 
 int /*<<< orphan*/  AML_MMC_CMD_SEND_REG ; 
 int AML_MMC_IRQ_STATUS_CLEAR_IRQ ; 
 int AML_MMC_IRQ_STATUS_CMD_BUSY ; 
 int AML_MMC_IRQ_STATUS_CMD_DONE_IRQ ; 
 int AML_MMC_IRQ_STATUS_RD_CRC16_OK ; 
 int /*<<< orphan*/  AML_MMC_IRQ_STATUS_REG ; 
 int AML_MMC_IRQ_STATUS_RESP_CRC7_OK ; 
 int AML_MMC_IRQ_STATUS_WR_CRC16_OK ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_mmc_softc*) ; 
 int /*<<< orphan*/  AML_MMC_MULT_CONFIG_REG ; 
 int AML_MMC_MULT_CONFIG_RESP_READOUT_EN ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ,int) ; 
 int MMC_ERR_BADCRC ; 
 int MMC_ERR_FAILED ; 
 int MMC_ERR_NONE ; 
 int /*<<< orphan*/  FUNC5 (struct aml8726_mmc_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct aml8726_mmc_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct aml8726_mmc_softc *sc = (struct aml8726_mmc_softc *)arg;
	uint32_t cmdr;
	uint32_t isr;
	uint32_t mcfgr;
	uint32_t previous_byte;
	uint32_t resp;
	int mmc_error;
	unsigned int i;

	FUNC0(sc);

	isr = FUNC3(sc, AML_MMC_IRQ_STATUS_REG);
	cmdr = FUNC3(sc, AML_MMC_CMD_SEND_REG);

	if (sc->cmd == NULL)
		goto spurious;

	mmc_error = MMC_ERR_NONE;

	if ((isr & AML_MMC_IRQ_STATUS_CMD_DONE_IRQ) != 0) {
		/* Check for CRC errors if the command has completed. */
		if ((cmdr & AML_MMC_CMD_RESP_NO_CRC7) == 0 &&
		    (isr & AML_MMC_IRQ_STATUS_RESP_CRC7_OK) == 0)
			mmc_error = MMC_ERR_BADCRC;
		if ((cmdr & AML_MMC_CMD_RESP_HAS_DATA) != 0 &&
		    (isr & AML_MMC_IRQ_STATUS_RD_CRC16_OK) == 0)
			mmc_error = MMC_ERR_BADCRC;
		if ((cmdr & AML_MMC_CMD_CMD_HAS_DATA) != 0 &&
		    (isr & AML_MMC_IRQ_STATUS_WR_CRC16_OK) == 0)
			mmc_error = MMC_ERR_BADCRC;
	} else {
spurious:

		/*
		 * Clear spurious interrupts while leaving intacted any
		 * interrupts that may have occurred after we read the
		 * interrupt status register.
		 */

		FUNC4(sc, AML_MMC_IRQ_STATUS_REG,
		    (AML_MMC_IRQ_STATUS_CLEAR_IRQ & isr));
		FUNC2(sc, AML_MMC_IRQ_STATUS_REG);
		FUNC1(sc);
		return;
	}

	if ((cmdr & AML_MMC_CMD_RESP_BITS_MASK) != 0) {
		mcfgr = sc->port;
		mcfgr |= AML_MMC_MULT_CONFIG_RESP_READOUT_EN;
		FUNC4(sc, AML_MMC_MULT_CONFIG_REG, mcfgr);

		if ((cmdr & AML_MMC_CMD_RESP_CRC7_FROM_8) != 0) {

			/*
			 * Controller supplies 135:8 instead of
			 * 127:0 so discard the leading 8 bits
			 * and provide a trailing 8 zero bits
			 * where the CRC belongs.
			 */

			previous_byte = 0;

			for (i = 0; i < 4; i++) {
				resp = FUNC3(sc, AML_MMC_CMD_ARGUMENT_REG);
				sc->cmd->resp[3 - i] = (resp << 8) |
				    previous_byte;
				previous_byte = (resp >> 24) & 0xff;
			}
		} else
			sc->cmd->resp[0] = FUNC3(sc,
			    AML_MMC_CMD_ARGUMENT_REG);
	}

	if ((isr & AML_MMC_IRQ_STATUS_CMD_BUSY) != 0 &&
	    /*
	     * A multiblock operation may keep the hardware
	     * busy until stop transmission is executed.
	     */
	    (isr & AML_MMC_IRQ_STATUS_CMD_DONE_IRQ) == 0) {
		if (mmc_error == MMC_ERR_NONE)
			mmc_error = MMC_ERR_FAILED;

		/*
		 * Issue a soft reset to terminate the command.
		 *
		 * Ensure the command has terminated before continuing on
		 * to things such as bus_dmamap_sync / bus_dmamap_unload.
		 */

		FUNC6(sc, false);

		while ((FUNC3(sc, AML_MMC_IRQ_STATUS_REG) &
		    AML_MMC_IRQ_STATUS_CMD_BUSY) != 0)
			FUNC7();
	}

	FUNC5(sc, mmc_error);
}