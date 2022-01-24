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
struct hdmi_softc {int audio_freq; int audio_chans; int /*<<< orphan*/  hdmi_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0 ; 
 int FUNC1 (struct hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi_softc*) ; 
 int FUNC4 (struct hdmi_softc*) ; 

__attribute__((used)) static void
FUNC5(struct hdmi_softc *sc)
{
	uint32_t val;
	int rv;

	if (!sc->hdmi_mode)
		return;

	val = FUNC1(sc, HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0);
	if ((val & (1 << 30)) == 0) {
		FUNC2(sc);
		return;
	}

	/* XXX Move this to any header */
	/* Keep in sync with HDA */
	sc->audio_freq =  val & 0x00FFFFFF;
	sc->audio_chans = (val >> 24) & 0x0f;
	FUNC0("%d channel(s) at %dHz\n", sc->audio_chans,
	    sc->audio_freq);

	rv = FUNC4(sc);
	if (rv != 0) {
		FUNC2(sc);
		return;
	}

	FUNC3(sc);
}