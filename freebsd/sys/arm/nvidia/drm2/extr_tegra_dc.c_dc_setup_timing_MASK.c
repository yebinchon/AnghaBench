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
struct dc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_DISP_DISP_COLOR_CONTROL ; 
 int /*<<< orphan*/  DC_DISP_DISP_SIGNAL_OPTIONS0 ; 
 int /*<<< orphan*/  DC_DISP_DISP_TIMING_OPTIONS ; 
 int /*<<< orphan*/  DC_DISP_H_PULSE2_CONTROL ; 
 int /*<<< orphan*/  DC_DISP_H_PULSE2_POSITION_A ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DITHER_DISABLE ; 
 int H_PULSE2_ENABLE ; 
 int /*<<< orphan*/  LAST_END_A ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  QUAL_VACTIVE ; 
 int /*<<< orphan*/  SIZE_BASE888 ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 struct dc_softc* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(device_t dev, int h_pulse_start)
{
	struct dc_softc *sc;

	sc = FUNC8(dev);

	/* Setup display timing */
	FUNC7(sc, DC_DISP_DISP_TIMING_OPTIONS, FUNC6(1));
	FUNC7(sc, DC_DISP_DISP_COLOR_CONTROL,
	    FUNC1(DITHER_DISABLE) | FUNC0(SIZE_BASE888));

	FUNC7(sc, DC_DISP_DISP_SIGNAL_OPTIONS0, H_PULSE2_ENABLE);
	FUNC7(sc, DC_DISP_H_PULSE2_CONTROL,
	    FUNC3(QUAL_VACTIVE) | FUNC2(LAST_END_A));

	FUNC7(sc, DC_DISP_H_PULSE2_POSITION_A,
	    FUNC5(h_pulse_start) | FUNC4(h_pulse_start + 8));
}