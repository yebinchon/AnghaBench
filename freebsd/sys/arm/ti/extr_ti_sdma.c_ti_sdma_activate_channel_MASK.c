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
typedef  scalar_t__ uint32_t ;
struct ti_sdma_softc {int sc_active_channels; struct ti_sdma_channel* sc_channel; } ;
struct ti_sdma_channel {void (* callback ) (unsigned int,uint32_t,void*) ;int need_reg_write; int reg_csdp; int reg_ccr; int reg_cicr; void* callback_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int DMA4_CICR_MISALIGNED_ADRS_ERR_IE ; 
 int DMA4_CICR_SECURE_ERR_IE ; 
 int DMA4_CICR_SUPERVISOR_ERR_IE ; 
 int DMA4_CICR_TRANS_ERR_IE ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int NUM_DMA_CHANNELS ; 
 int /*<<< orphan*/  FUNC17 (struct ti_sdma_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ti_sdma_softc*) ; 
 struct ti_sdma_softc* ti_sdma_sc ; 
 int /*<<< orphan*/  FUNC19 (struct ti_sdma_softc*,scalar_t__,int) ; 

int
FUNC20(unsigned int *ch,
                          void (*callback)(unsigned int ch, uint32_t status, void *data),
                          void *data)
{
	struct ti_sdma_softc *sc = ti_sdma_sc;
	struct ti_sdma_channel *channel = NULL;
	uint32_t addr;
	unsigned int i;

	/* Sanity check */
	if (sc == NULL)
		return (ENOMEM);

	if (ch == NULL)
		return (EINVAL);

	FUNC17(sc);

	/* Check to see if all channels are in use */
	if (sc->sc_active_channels == 0xffffffff) {
		FUNC18(sc);
		return (ENOMEM);
	}

	/* Find the first non-active channel */
	for (i = 0; i < NUM_DMA_CHANNELS; i++) {
		if (!(sc->sc_active_channels & (0x1 << i))) {
			sc->sc_active_channels |= (0x1 << i);
			*ch = i;
			break;
		}
	}

	/* Get the channel struct and populate the fields */
	channel = &sc->sc_channel[*ch];

	channel->callback = callback;
	channel->callback_data = data;

	channel->need_reg_write = 1;

	/* Set the default configuration for the DMA channel */
	channel->reg_csdp = FUNC9(0x2)
		| FUNC13(0)
		| FUNC10(0)
		| FUNC14(0)
		| FUNC11(0)
		| FUNC16(0)
		| FUNC15(0)
		| FUNC12(0);

	channel->reg_ccr = FUNC2(1)
		| FUNC5(1)
		| FUNC4(0)
		| FUNC7(0)
		| FUNC6(0)
		| FUNC3(0)
		| FUNC1(0);

	channel->reg_cicr = DMA4_CICR_TRANS_ERR_IE
		| DMA4_CICR_SECURE_ERR_IE
		| DMA4_CICR_SUPERVISOR_ERR_IE
		| DMA4_CICR_MISALIGNED_ADRS_ERR_IE;

	/* Clear all the channel registers, this should abort any transaction */
	for (addr = FUNC0(*ch); addr <= FUNC8(*ch); addr += 4)
		FUNC19(sc, addr, 0x00000000);

	FUNC18(sc);

	return 0;
}