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
struct a10codec_info {TYPE_1__* cfg; } ;
struct a10codec_chinfo {scalar_t__ dir; int /*<<< orphan*/  format; scalar_t__ pos; struct a10codec_info* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* mute ) (struct a10codec_info*,int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct a10codec_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct a10codec_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct a10codec_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct a10codec_info*) ; 
 int ADC_FIFOC_DRQ_EN ; 
 int ADC_FIFOC_EN_AD ; 
 int ADC_FIFOC_FIFO_FLUSH ; 
 int ADC_FIFOC_FS_SHIFT ; 
 int ADC_FIFOC_MONO_EN ; 
 int ADC_FIFOC_RX_FIFO_MODE ; 
 int ADC_FIFOC_RX_TRIG_LEVEL_SHIFT ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct a10codec_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct a10codec_info*,int /*<<< orphan*/ ,int) ; 
 int DAC_FIFOC_DRQ_CLR_CNT_SHIFT ; 
 int DAC_FIFOC_DRQ_EN ; 
 int DAC_FIFOC_FIFO_FLUSH ; 
 int DAC_FIFOC_FIFO_MODE_SHIFT ; 
 int DAC_FIFOC_FS_SHIFT ; 
 int DAC_FIFOC_MONO_EN ; 
 int DAC_FIFOC_TX_TRIG_LEVEL_SHIFT ; 
 int DRQ_CLR_CNT ; 
 int FIFO_MODE_16_15_0 ; 
 scalar_t__ PCMDIR_PLAY ; 
 int RX_TRIG_LEVEL ; 
 int TX_TRIG_LEVEL ; 
 int /*<<< orphan*/  FUNC7 (struct a10codec_chinfo*) ; 
 int FUNC8 (struct a10codec_chinfo*) ; 
 int /*<<< orphan*/  FUNC9 (struct a10codec_chinfo*) ; 
 int /*<<< orphan*/  FUNC10 (struct a10codec_info*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct a10codec_info*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(struct a10codec_chinfo *ch)
{
	struct a10codec_info *sc = ch->parent;
	uint32_t val;

	ch->pos = 0;

	if (ch->dir == PCMDIR_PLAY) {
		/* Flush DAC FIFO */
		FUNC6(sc, FUNC2(sc), DAC_FIFOC_FIFO_FLUSH);

		/* Clear DAC FIFO status */
		FUNC6(sc, FUNC3(sc),
		    FUNC5(sc, FUNC3(sc)));

		/* Unmute output */
		sc->cfg->mute(sc, 0, ch->dir);

		/* Configure DAC DMA channel */
		FUNC7(ch);

		/* Configure DAC FIFO */
		FUNC6(sc, FUNC2(sc),
		    (FUNC4(ch->format) == 1 ? DAC_FIFOC_MONO_EN : 0) |
		    (FUNC8(ch) << DAC_FIFOC_FS_SHIFT) |
		    (FIFO_MODE_16_15_0 << DAC_FIFOC_FIFO_MODE_SHIFT) |
		    (DRQ_CLR_CNT << DAC_FIFOC_DRQ_CLR_CNT_SHIFT) |
		    (TX_TRIG_LEVEL << DAC_FIFOC_TX_TRIG_LEVEL_SHIFT));

		/* Enable DAC DRQ */
		val = FUNC5(sc, FUNC2(sc));
		val |= DAC_FIFOC_DRQ_EN;
		FUNC6(sc, FUNC2(sc), val);
	} else {
		/* Flush ADC FIFO */
		FUNC6(sc, FUNC0(sc), ADC_FIFOC_FIFO_FLUSH);

		/* Clear ADC FIFO status */
		FUNC6(sc, FUNC1(sc),
		    FUNC5(sc, FUNC1(sc)));

		/* Unmute input */
		sc->cfg->mute(sc, 0, ch->dir);

		/* Configure ADC DMA channel */
		FUNC7(ch);

		/* Configure ADC FIFO */
		FUNC6(sc, FUNC0(sc),
		    ADC_FIFOC_EN_AD |
		    ADC_FIFOC_RX_FIFO_MODE |
		    (FUNC4(ch->format) == 1 ? ADC_FIFOC_MONO_EN : 0) |
		    (FUNC8(ch) << ADC_FIFOC_FS_SHIFT) |
		    (RX_TRIG_LEVEL << ADC_FIFOC_RX_TRIG_LEVEL_SHIFT));

		/* Enable ADC DRQ */
		val = FUNC5(sc, FUNC0(sc));
		val |= ADC_FIFOC_DRQ_EN;
		FUNC6(sc, FUNC0(sc), val);
	}

	/* Start DMA transfer */
	FUNC9(ch);
}