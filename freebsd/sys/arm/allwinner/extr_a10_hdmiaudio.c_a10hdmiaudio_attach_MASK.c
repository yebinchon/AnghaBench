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
struct a10hdmiaudio_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dmat; int /*<<< orphan*/  dmasize; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  DMABUF_DEFAULT ; 
 int /*<<< orphan*/  DMABUF_MAX ; 
 int /*<<< orphan*/  DMABUF_MIN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int SD_F_MPSAFE ; 
 int SD_F_SOFTPCMVOL ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  a10hdmiaudio_chan_class ; 
 int /*<<< orphan*/  a10hdmiaudio_mixer_class ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct a10hdmiaudio_info*,int /*<<< orphan*/ ) ; 
 struct a10hdmiaudio_info* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct a10hdmiaudio_info*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct a10hdmiaudio_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct a10hdmiaudio_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct a10hdmiaudio_info *sc;
	char status[SND_STATUSLEN];
	int error;

	sc = FUNC5(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->dev = dev;
	sc->lock = FUNC14(FUNC2(dev), "a10hdmiaudio softc");

	sc->dmasize = FUNC9(dev, DMABUF_MIN,
	    DMABUF_DEFAULT, DMABUF_MAX);
	error = FUNC0(
	    FUNC1(dev),
	    4, sc->dmasize,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    sc->dmasize, 1,		/* maxsize, nsegs */
	    sc->dmasize, 0,		/* maxsegsize, flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->dmat);
	if (error != 0) {
		FUNC3(dev, "cannot create DMA tag\n");
		goto fail;
	}

	if (FUNC6(dev, &a10hdmiaudio_mixer_class, sc)) {
		FUNC3(dev, "mixer_init failed\n");
		goto fail;
	}

	FUNC12(dev, FUNC10(dev) | SD_F_MPSAFE);
	FUNC12(dev, FUNC10(dev) | SD_F_SOFTPCMVOL);

	if (FUNC11(dev, sc, 1, 0)) {
		FUNC3(dev, "pcm_register failed\n");
		goto fail;
	}

	FUNC8(dev, PCMDIR_PLAY, &a10hdmiaudio_chan_class, sc);

	FUNC16(status, SND_STATUSLEN, "at %s", FUNC7(dev));
	FUNC13(dev, status);

	return (0);

fail:
	FUNC15(sc->lock);
	FUNC4(sc, M_DEVBUF);

	return (error);
}