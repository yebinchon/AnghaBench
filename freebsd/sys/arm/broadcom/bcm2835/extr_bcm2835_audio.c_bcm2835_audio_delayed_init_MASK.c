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
struct bcm2835_audio_info {int volume; int /*<<< orphan*/  pch; int /*<<< orphan*/  dev; int /*<<< orphan*/  dest; int /*<<< orphan*/  intr_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEST_AUTO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bcmchan_class ; 
 int /*<<< orphan*/  bcmmixer_class ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bcm2835_audio_info*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct bcm2835_audio_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct bcm2835_audio_info*) ; 

__attribute__((used)) static void
FUNC12(void *xsc)
{
    	struct bcm2835_audio_info *sc;
    	char status[SND_STATUSLEN];

	sc = xsc;

	FUNC4(&sc->intr_hook);

	FUNC1(sc);
	FUNC2(sc);
	sc->volume = 75;
	sc->dest = DEST_AUTO;

    	if (FUNC6(sc->dev, &bcmmixer_class, sc)) {
		FUNC5(sc->dev, "mixer_init failed\n");
		goto no;
	}

    	if (FUNC8(sc->dev, sc, 1, 0)) {
		FUNC5(sc->dev, "pcm_register failed\n");
		goto no;
	}

	FUNC7(sc->dev, PCMDIR_PLAY, &bcmchan_class, sc);
    	FUNC10(status, SND_STATUSLEN, "at VCHIQ");
	FUNC9(sc->dev, status);

	FUNC3(&sc->pch);
	FUNC0(sc);

	FUNC11(sc);

no:
	;
}