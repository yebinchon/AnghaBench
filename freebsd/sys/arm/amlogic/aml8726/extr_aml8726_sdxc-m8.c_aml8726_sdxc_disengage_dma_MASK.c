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
struct mmc_data {scalar_t__ len; int flags; } ;
struct aml8726_sdxc_softc {int auto_fill_flush; int /*<<< orphan*/  dev; TYPE_1__* cmd; } ;
struct TYPE_2__ {struct mmc_data* data; } ;

/* Variables and functions */
 int AML_SDXC_PDMA_DMA_EN ; 
 int /*<<< orphan*/  AML_SDXC_PDMA_REG ; 
 int AML_SDXC_PDMA_RX_FLUSH_MODE_SW ; 
 int AML_SDXC_PDMA_RX_FLUSH_NOW ; 
 int /*<<< orphan*/  AML_SDXC_STATUS_REG ; 
 int AML_SDXC_STATUS_RX_CNT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct aml8726_sdxc_softc *sc)
{
	int i;
	uint32_t pdmar;
	uint32_t sr;
	struct mmc_data *data;

	data = sc->cmd->data;

	if (data == NULL || data->len == 0)
		return;

	pdmar = FUNC1(sc, AML_SDXC_PDMA_REG);

	if (sc->auto_fill_flush == true) {
		pdmar &= ~AML_SDXC_PDMA_DMA_EN;
		FUNC2(sc, AML_SDXC_PDMA_REG, pdmar);
		FUNC0(sc, AML_SDXC_PDMA_REG);
		return;
	}

	if ((data->flags & MMC_DATA_READ) != 0) {
		pdmar |= AML_SDXC_PDMA_RX_FLUSH_NOW;
		FUNC2(sc, AML_SDXC_PDMA_REG, pdmar);
		FUNC0(sc, AML_SDXC_PDMA_REG);

		/*
		 * Wait up to 100us for data to drain.
		 */
		for (i = 0; i < 100; i++) {
			sr = FUNC1(sc, AML_SDXC_STATUS_REG);
			if ((sr & AML_SDXC_STATUS_RX_CNT_MASK) == 0)
				break;
			FUNC3(1);
		}
		if (i >= 100)
			FUNC4(sc->dev, "RX FIFO drain timeout\n");
	}

	pdmar &= ~(AML_SDXC_PDMA_DMA_EN | AML_SDXC_PDMA_RX_FLUSH_MODE_SW);

	FUNC2(sc, AML_SDXC_PDMA_REG, pdmar);
	FUNC0(sc, AML_SDXC_PDMA_REG);
}