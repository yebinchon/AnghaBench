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
struct ft5406ts_softc {int* touch_buf; int /*<<< orphan*/  sc_tick; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/  sc_evdev; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_window; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_SLOT ; 
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  FUNC0 (struct ft5406ts_softc*) ; 
 size_t FT5406_NUM_POINTS ; 
 int /*<<< orphan*/  FT5406_WINDOW_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int MAX_TOUCH_ID ; 
 int NO_POINTS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ft5406ts_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *data)
{
	struct ft5406ts_softc *sc = (struct ft5406ts_softc *)data;
	int points;
	int id, i, x, y;

	FUNC0(sc);

	FUNC9(sc->sc_window, sc->touch_buf, FT5406_WINDOW_SIZE);
	sc->touch_buf[FT5406_NUM_POINTS] = NO_POINTS;

	points = FUNC1(sc->sc_window);
	/*
	 * No update from VC - do nothing.
	 */
	if (points == NO_POINTS)
		goto out;

	for (i = 0; i < points; i++) {
		id = FUNC2(sc->sc_window, i);
		x = FUNC3(sc->sc_window, i);
		y = FUNC4(sc->sc_window, i);

		if (id > MAX_TOUCH_ID) {
			FUNC6(sc->sc_dev, "bad touch id: %d", id);
			continue;
		}
		FUNC7(sc->sc_evdev, EV_ABS, ABS_MT_SLOT, id);
		FUNC7(sc->sc_evdev, EV_ABS, ABS_MT_TRACKING_ID, id);
		FUNC7(sc->sc_evdev, EV_ABS, ABS_MT_POSITION_X, x);
		FUNC7(sc->sc_evdev, EV_ABS, ABS_MT_POSITION_Y, y);
	}
	FUNC8(sc->sc_evdev);
out:
	FUNC5(&sc->sc_callout, sc->sc_tick, ft5406ts_callout, sc);
}