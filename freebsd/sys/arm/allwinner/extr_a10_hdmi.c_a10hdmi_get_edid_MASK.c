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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct a10hdmi_softc {scalar_t__ has_audio; scalar_t__ has_hdmi; int /*<<< orphan*/ * edid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTRL_DDC_EN ; 
 int CTRL_DDC_SWRST ; 
 int /*<<< orphan*/  DDC_CLOCK ; 
 int DDC_CLOCK_M ; 
 int DDC_CLOCK_N ; 
 int /*<<< orphan*/  DDC_CTRL ; 
 int /*<<< orphan*/  DDC_CTRL_LINE ; 
 int /*<<< orphan*/  DDC_FIFO_CTRL ; 
 int DDC_LINE_SCL_ENABLE ; 
 int DDC_LINE_SDA_ENABLE ; 
 int DDC_READ_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int FUNC1 (struct a10hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct a10hdmi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SWRST_DELAY ; 
 int FUNC3 (struct a10hdmi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct a10hdmi_softc*,scalar_t__*,scalar_t__*) ; 
 struct a10hdmi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint8_t **edid, uint32_t *edid_len)
{
	struct a10hdmi_softc *sc;
	int error, retry;

	sc = FUNC5(dev);
	retry = DDC_READ_RETRY;

	while (--retry > 0) {
		/* I2C software reset */
		FUNC2(sc, DDC_FIFO_CTRL, 0);
		FUNC2(sc, DDC_CTRL, CTRL_DDC_EN | CTRL_DDC_SWRST);
		FUNC0(SWRST_DELAY);
		if (FUNC1(sc, DDC_CTRL) & CTRL_DDC_SWRST) {
			FUNC6(dev, "DDC software reset failed\n");
			return (ENXIO);
		}

		/* Configure DDC clock */
		FUNC2(sc, DDC_CLOCK, DDC_CLOCK_M | DDC_CLOCK_N);

		/* Enable SDA/SCL */
		FUNC2(sc, DDC_CTRL_LINE,
		    DDC_LINE_SCL_ENABLE | DDC_LINE_SDA_ENABLE);

		/* Read EDID block */
		error = FUNC3(sc, 0, sc->edid);
		if (error == 0) {
			*edid = sc->edid;
			*edid_len = sizeof(sc->edid);
			break;
		}
	}

	if (error == 0)
		FUNC4(sc, &sc->has_hdmi, &sc->has_audio);
	else
		sc->has_hdmi = sc->has_audio = 0;

	return (error);
}