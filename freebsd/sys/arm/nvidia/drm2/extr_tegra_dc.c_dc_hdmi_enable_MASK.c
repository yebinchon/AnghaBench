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
typedef  int /*<<< orphan*/  uint32_t ;
struct dc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DC_DISP_DISP_WIN_OPTIONS ; 
 int /*<<< orphan*/  HDMI_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dc_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, bool enable)
{
	struct dc_softc *sc;
	uint32_t val;

	sc = FUNC2(dev);

	val = FUNC0(sc, DC_DISP_DISP_WIN_OPTIONS);
	if (enable)
		val |= HDMI_ENABLE;
	else
		val &= ~HDMI_ENABLE;
	FUNC1(sc, DC_DISP_DISP_WIN_OPTIONS, val);

}