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
typedef  int uint32_t ;
struct ti_sdma_softc {int sc_active_channels; struct ti_sdma_channel* sc_channel; } ;
struct ti_sdma_channel {int reg_csdp; int reg_ccr; scalar_t__ need_reg_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC12 (struct ti_sdma_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ti_sdma_softc*) ; 
 int FUNC14 (struct ti_sdma_softc*,int /*<<< orphan*/ ) ; 
 struct ti_sdma_softc* ti_sdma_sc ; 
 int /*<<< orphan*/  FUNC15 (struct ti_sdma_softc*,int /*<<< orphan*/ ,int) ; 

int
FUNC16(unsigned int ch, unsigned int src_paddr,
                    unsigned long dst_paddr,
                    unsigned int frmcnt, unsigned int elmcnt)
{
	struct ti_sdma_softc *sc = ti_sdma_sc;
	struct ti_sdma_channel *channel;
	uint32_t ccr;

	/* Sanity check */
	if (sc == NULL)
		return (ENOMEM);

	FUNC12(sc);

	if ((sc->sc_active_channels & (1 << ch)) == 0) {
		FUNC13(sc);
		return (EINVAL);
	}

	channel = &sc->sc_channel[ch];

	/* a) Write the CSDP register */
	FUNC15(sc, FUNC6(ch),
	    channel->reg_csdp | FUNC7(1));

	/* b) Set the number of element per frame CEN[23:0] */
	FUNC15(sc, FUNC4(ch), elmcnt);

	/* c) Set the number of frame per block CFN[15:0] */
	FUNC15(sc, FUNC5(ch), frmcnt);

	/* d) Set the Source/dest start address index CSSA[31:0]/CDSA[31:0] */
	FUNC15(sc, FUNC11(ch), src_paddr);
	FUNC15(sc, FUNC3(ch), dst_paddr);

	/* e) Write the CCR register */
	FUNC15(sc, FUNC0(ch), channel->reg_ccr);

	/* f)  - Set the source element index increment CSEI[15:0] */
	FUNC15(sc, FUNC8(ch), 0x0001);

	/*     - Set the source frame index increment CSFI[15:0] */
	FUNC15(sc, FUNC9(ch), 0x0001);

	/*     - Set the destination element index increment CDEI[15:0]*/
	FUNC15(sc, FUNC1(ch), 0x0001);

	/* - Set the destination frame index increment CDFI[31:0] */
	FUNC15(sc, FUNC2(ch), 0x0001);

	/* Clear the status register */
	FUNC15(sc, FUNC10(ch), 0x1FFE);

	/* Write the start-bit and away we go */
	ccr = FUNC14(sc, FUNC0(ch));
	ccr |= (1 << 7);
	FUNC15(sc, FUNC0(ch), ccr);

	/* Clear the reg write flag */
	channel->need_reg_write = 0;

	FUNC13(sc);

	return (0);
}