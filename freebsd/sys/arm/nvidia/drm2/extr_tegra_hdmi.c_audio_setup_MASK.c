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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct hdmi_softc {int /*<<< orphan*/  audio_src_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  audio_freq; int /*<<< orphan*/  clk_hdmi; int /*<<< orphan*/  hdmi_mode; } ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int ACR_ENABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int AUDIO_N_GENERATE_ALTERNATE ; 
 int AUDIO_N_RESETF ; 
 int FUNC2 (int) ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_AUDIO_N ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_ACR_CTRL ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_SPARE ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_AUDIO_CNTRL0 ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_AUDIO_SPARE0 ; 
 int FUNC3 (struct hdmi_softc*,int /*<<< orphan*/ ) ; 
 int SOR_AUDIO_CNTRL0_INJECT_NULLSMPL ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int SOR_AUDIO_SPARE0_HBR_ENABLE ; 
 int FUNC5 (int) ; 
 int SPARE_FORCE_SW_CTS ; 
 int SPARE_HW_CTS ; 
 int /*<<< orphan*/  FUNC6 (struct hdmi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hdmi_softc*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 

__attribute__((used)) static int
FUNC12(struct hdmi_softc *sc)
{
	uint32_t val;
	uint32_t audio_n;
	uint32_t audio_cts;
	uint32_t audio_aval;
	uint64_t hdmi_freq;
	bus_size_t aval_reg;
	int rv;

	if (!sc->hdmi_mode)
		return (ENOTSUP);
	rv  = FUNC10(sc->audio_freq, NULL, NULL, &aval_reg);
	if (rv != 0) {
		FUNC9(sc->dev, "Unsupported audio frequency.\n");
		return (rv);
	}

	rv = FUNC8(sc->clk_hdmi, &hdmi_freq);
	if (rv != 0) {
		FUNC9(sc->dev, "Cannot get hdmi frequency: %d\n", rv);
		return (rv);
	}

	rv = FUNC11(sc->audio_freq, hdmi_freq, &audio_cts, &audio_n,
	    &audio_aval);
	if (rv != 0) {
		FUNC9(sc->dev, "Cannot compute audio coefs: %d\n", rv);
		return (rv);
	}

	/* Audio infoframe. */
	FUNC7(sc);
	/* Setup audio source */
	FUNC6(sc, HDMI_NV_PDISP_SOR_AUDIO_CNTRL0,
	    FUNC4(sc->audio_src_type) |
	    SOR_AUDIO_CNTRL0_INJECT_NULLSMPL);

	val = FUNC3(sc, HDMI_NV_PDISP_SOR_AUDIO_SPARE0);
	val |= SOR_AUDIO_SPARE0_HBR_ENABLE;
	FUNC6(sc, HDMI_NV_PDISP_SOR_AUDIO_SPARE0, val);

	FUNC6(sc, HDMI_NV_PDISP_HDMI_ACR_CTRL, 0);

	FUNC6(sc, HDMI_NV_PDISP_AUDIO_N,
	    AUDIO_N_RESETF |
	    AUDIO_N_GENERATE_ALTERNATE |
	    FUNC2(audio_n - 1));

	FUNC6(sc, HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH,
	    FUNC1(audio_n) | ACR_ENABLE);

	FUNC6(sc, HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW,
	    FUNC0(audio_cts));

	FUNC6(sc, HDMI_NV_PDISP_HDMI_SPARE,
	    SPARE_HW_CTS | SPARE_FORCE_SW_CTS | FUNC5(1));

	val = FUNC3(sc, HDMI_NV_PDISP_AUDIO_N);
	val &= ~AUDIO_N_RESETF;
	FUNC6(sc, HDMI_NV_PDISP_AUDIO_N, val);

	FUNC6(sc, aval_reg, audio_aval);

	return (0);
}