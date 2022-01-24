#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct gpiobus_pin {int dummy; } ;
struct a10codec_info {int dmasize; int /*<<< orphan*/  lock; int /*<<< orphan*/  res; TYPE_1__* cfg; int /*<<< orphan*/  dmat; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  hwreset_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  mixer_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct a10codec_info*) ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int /*<<< orphan*/  FUNC1 (struct a10codec_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct a10codec_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DAC_DPC_EN_DA ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int SD_F_MPSAFE ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  a10codec_chan_class ; 
 int /*<<< orphan*/  a10codec_spec ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct a10codec_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct gpiobus_pin**) ; 
 int FUNC14 (struct gpiobus_pin*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct a10codec_info* FUNC17 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct a10codec_info*) ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct a10codec_info*) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,struct a10codec_info*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC30(device_t dev)
{
	struct a10codec_info *sc;
	char status[SND_STATUSLEN];
	struct gpiobus_pin *pa_pin;
	phandle_t node;
	clk_t clk_bus, clk_codec;
	hwreset_t rst;
	uint32_t val;
	int error;

	node = FUNC20(dev);

	sc = FUNC17(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->cfg = (void *)FUNC21(dev, compat_data)->ocd_data;
	sc->dev = dev;
	sc->lock = FUNC27(FUNC10(dev), "a10codec softc");

	if (FUNC3(dev, a10codec_spec, sc->res)) {
		FUNC11(dev, "cannot allocate resources for device\n");
		error = ENXIO;
		goto fail;
	}

	sc->dmasize = 131072;
	error = FUNC4(
	    FUNC5(dev),
	    4, sc->dmasize,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    sc->dmasize, 1,		/* maxsize, nsegs */
	    sc->dmasize, 0,		/* maxsegsize, flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->dmat);
	if (error != 0) {
		FUNC11(dev, "cannot create DMA tag\n");
		goto fail;
	}

	/* Get clocks */
	if (FUNC8(dev, 0, "apb", &clk_bus) != 0 &&
	    FUNC8(dev, 0, "ahb", &clk_bus) != 0) {
		FUNC11(dev, "cannot find bus clock\n");
		goto fail;
	}
	if (FUNC8(dev, 0, "codec", &clk_codec) != 0) {
		FUNC11(dev, "cannot find codec clock\n");
		goto fail;
	}

	/* Gating bus clock for codec */
	if (FUNC7(clk_bus) != 0) {
		FUNC11(dev, "cannot enable bus clock\n");
		goto fail;
	}
	/* Activate audio codec clock. According to the A10 and A20 user
	 * manuals, Audio_pll can be either 24.576MHz or 22.5792MHz. Most
	 * audio sampling rates require an 24.576MHz input clock with the
	 * exception of 44.1kHz, 22.05kHz, and 11.025kHz. Unfortunately,
	 * both capture and playback use the same clock source so to
	 * safely support independent full duplex operation, we use a fixed
	 * 24.576MHz clock source and don't advertise native support for
	 * the three sampling rates that require a 22.5792MHz input.
	 */
	error = FUNC9(clk_codec, 24576000, CLK_SET_ROUND_DOWN);
	if (error != 0) {
		FUNC11(dev, "cannot set codec clock frequency\n");
		goto fail;
	}
	/* Enable audio codec clock */
	error = FUNC7(clk_codec);
	if (error != 0) {
		FUNC11(dev, "cannot enable codec clock\n");
		goto fail;
	}

	/* De-assert hwreset */
	if (FUNC16(dev, 0, 0, &rst) == 0) {
		error = FUNC15(rst);
		if (error != 0) {
			FUNC11(dev, "cannot de-assert reset\n");
			goto fail;
		}
	}

	/* Enable DAC */
	val = FUNC1(sc, FUNC0(sc));
	val |= DAC_DPC_EN_DA;
	FUNC2(sc, FUNC0(sc), val);

	if (FUNC18(dev, sc->cfg->mixer_class, sc)) {
		FUNC11(dev, "mixer_init failed\n");
		goto fail;
	}

	/* Unmute PA */
	if (FUNC13(dev, node, "allwinner,pa-gpios",
	    &pa_pin) == 0) {
		error = FUNC14(pa_pin, 1);
		if (error != 0)
			FUNC11(dev, "failed to unmute PA\n");
	}

	FUNC25(dev, FUNC23(dev) | SD_F_MPSAFE);

	if (FUNC24(dev, sc, 1, 1)) {
		FUNC11(dev, "pcm_register failed\n");
		goto fail;
	}

	FUNC22(dev, PCMDIR_PLAY, &a10codec_chan_class, sc);
	FUNC22(dev, PCMDIR_REC, &a10codec_chan_class, sc);

	FUNC29(status, SND_STATUSLEN, "at %s", FUNC19(dev));
	FUNC26(dev, status);

	return (0);

fail:
	FUNC6(dev, a10codec_spec, sc->res);
	FUNC28(sc->lock);
	FUNC12(sc, M_DEVBUF);

	return (ENXIO);
}