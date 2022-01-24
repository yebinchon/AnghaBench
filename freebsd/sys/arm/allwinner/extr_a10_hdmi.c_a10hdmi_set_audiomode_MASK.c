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
struct videomode {int /*<<< orphan*/  dot_clock; } ;
struct a10hdmi_softc {int /*<<< orphan*/  has_audio; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AUD_CTRL_EN ; 
 int AUD_CTRL_RST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CH_STATUS0_FS_FREQ_48 ; 
 int CH_STATUS1_WORD_LEN_16 ; 
 int /*<<< orphan*/  HDMI_ADMA_CTRL ; 
 int HDMI_ADMA_MODE_DDMA ; 
 int HDMI_AUDIO_CHANNELMAP ; 
 int /*<<< orphan*/  HDMI_AUDIO_CHANNELS ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int HDMI_AUDIO_N ; 
 int HDMI_AUDIO_RESET_RETRY ; 
 int /*<<< orphan*/  HDMI_AUD_CH_STATUS0 ; 
 int /*<<< orphan*/  HDMI_AUD_CH_STATUS1 ; 
 int /*<<< orphan*/  HDMI_AUD_CTRL ; 
 int /*<<< orphan*/  HDMI_AUD_CTS ; 
 int /*<<< orphan*/  HDMI_AUD_FMT ; 
 int /*<<< orphan*/  HDMI_AUD_N ; 
 int /*<<< orphan*/  HDMI_PCM_CTRL ; 
 int FUNC2 (struct a10hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a10hdmi_softc*,int /*<<< orphan*/ ,int) ; 
 struct a10hdmi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(device_t dev, const struct videomode *mode)
{
	struct a10hdmi_softc *sc;
	uint32_t val;
	int retry;

	sc = FUNC4(dev);

	/* Disable and reset audio module and wait for reset bit to clear */
	FUNC3(sc, HDMI_AUD_CTRL, AUD_CTRL_RST);
	for (retry = HDMI_AUDIO_RESET_RETRY; retry > 0; retry--) {
		val = FUNC2(sc, HDMI_AUD_CTRL);
		if ((val & AUD_CTRL_RST) == 0)
			break;
	}
	if (retry == 0) {
		FUNC5(dev, "timeout waiting for audio module\n");
		return;
	}

	if (!sc->has_audio)
		return;

	/* DMA and FIFO control */
	FUNC3(sc, HDMI_ADMA_CTRL, HDMI_ADMA_MODE_DDMA);

	/* Audio format control (LPCM, S16LE, stereo) */
	FUNC3(sc, HDMI_AUD_FMT, FUNC0(HDMI_AUDIO_CHANNELS));

	/* Channel mappings */
	FUNC3(sc, HDMI_PCM_CTRL, HDMI_AUDIO_CHANNELMAP);

	/* Clocks */
	FUNC3(sc, HDMI_AUD_CTS,
	    FUNC1(mode->dot_clock, HDMI_AUDIO_N));
	FUNC3(sc, HDMI_AUD_N, HDMI_AUDIO_N);

	/* Set sampling frequency to 48 kHz, word length to 16-bit */
	FUNC3(sc, HDMI_AUD_CH_STATUS0, CH_STATUS0_FS_FREQ_48);
	FUNC3(sc, HDMI_AUD_CH_STATUS1, CH_STATUS1_WORD_LEN_16);

	/* Enable */
	FUNC3(sc, HDMI_AUD_CTRL, AUD_CTRL_EN);
}