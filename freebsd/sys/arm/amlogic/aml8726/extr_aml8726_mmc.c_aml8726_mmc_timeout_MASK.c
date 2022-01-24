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
struct aml8726_mmc_softc {int dummy; } ;

/* Variables and functions */
 int AML_MMC_IRQ_STATUS_CMD_BUSY ; 
 int /*<<< orphan*/  AML_MMC_IRQ_STATUS_REG ; 
 int FUNC0 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMC_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_mmc_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct aml8726_mmc_softc *sc = (struct aml8726_mmc_softc *)arg;

	/*
	 * The command failed to complete in time so forcefully
	 * terminate it.
	 */
	FUNC2(sc, false);

	/*
	 * Ensure the command has terminated before continuing on
	 * to things such as bus_dmamap_sync / bus_dmamap_unload.
	 */
	while ((FUNC0(sc, AML_MMC_IRQ_STATUS_REG) &
	    AML_MMC_IRQ_STATUS_CMD_BUSY) != 0)
		FUNC3();

	FUNC1(sc, MMC_ERR_TIMEOUT);
}