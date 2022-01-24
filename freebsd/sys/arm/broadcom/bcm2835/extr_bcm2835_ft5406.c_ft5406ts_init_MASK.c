#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ft5406ts_softc {int sc_tick; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/ * touch_buf; int /*<<< orphan*/ * sc_evdev; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_init_hook; } ;
struct TYPE_7__ {scalar_t__ address; } ;
struct TYPE_8__ {TYPE_3__ resp; } ;
struct TYPE_6__ {int val_buf_size; int val_len; int /*<<< orphan*/  tag; } ;
struct TYPE_5__ {int buf_size; int /*<<< orphan*/  code; } ;
struct bcm2835_mbox_tag_touchbuf {TYPE_4__ body; scalar_t__ end_tag; TYPE_2__ tag_hdr; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_SLOT ; 
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int /*<<< orphan*/  BCM2835_MBOX_CODE_REQ ; 
 int /*<<< orphan*/  BCM2835_MBOX_TAG_GET_TOUCHBUF ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int /*<<< orphan*/  EVDEV_FLAG_MT_AUTOREL ; 
 int /*<<< orphan*/  EVDEV_FLAG_MT_STCOMPAT ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_SYN ; 
 size_t FT5406_NUM_POINTS ; 
 int /*<<< orphan*/  FT5406_WINDOW_SIZE ; 
 int /*<<< orphan*/  INPUT_PROP_DIRECT ; 
 int /*<<< orphan*/  MAX_TOUCH_ID ; 
 int /*<<< orphan*/  NO_POINTS ; 
 int /*<<< orphan*/  SCREEN_HEIGHT ; 
 int /*<<< orphan*/  SCREEN_RES_X ; 
 int /*<<< orphan*/  SCREEN_RES_Y ; 
 int /*<<< orphan*/  SCREEN_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct bcm2835_mbox_tag_touchbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct ft5406ts_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ft5406ts_evdev_methods ; 
 int hz ; 
 int /*<<< orphan*/  FUNC18 (struct bcm2835_mbox_tag_touchbuf*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(void *arg)
{
	struct ft5406ts_softc *sc = arg;
	struct bcm2835_mbox_tag_touchbuf msg;
	uint32_t touchbuf;
	int err;

	/* release this hook (continue boot) */
	FUNC3(&sc->sc_init_hook);

	FUNC18(&msg, 0, sizeof(msg));
	msg.hdr.buf_size = sizeof(msg);
	msg.hdr.code = BCM2835_MBOX_CODE_REQ;
	msg.tag_hdr.tag = BCM2835_MBOX_TAG_GET_TOUCHBUF;
	msg.tag_hdr.val_buf_size = sizeof(msg.body);
	msg.tag_hdr.val_len = sizeof(msg.body);
	msg.end_tag = 0;

	/* call mailbox property */
	err = FUNC1(&msg, sizeof(msg));
	if (err) {
		FUNC6(sc->sc_dev, "failed to get touchbuf address\n");
		return;
	}

	if (msg.body.resp.address == 0) {
		FUNC6(sc->sc_dev, "touchscreen not detected\n");
		return;
	}

	touchbuf = FUNC0(msg.body.resp.address);
	sc->touch_buf = (uint8_t*)FUNC19(touchbuf, FT5406_WINDOW_SIZE);

	/* 60Hz */
	sc->sc_tick = hz * 17 / 1000;
	if (sc->sc_tick == 0)
		sc->sc_tick = 1;

	sc->sc_evdev = FUNC7();
	FUNC13(sc->sc_evdev, FUNC4(sc->sc_dev));
	FUNC14(sc->sc_evdev, FUNC5(sc->sc_dev));
	FUNC11(sc->sc_evdev, BUS_HOST, 0, 0, 0);
	FUNC12(sc->sc_evdev, sc, &ft5406ts_evdev_methods);
	FUNC10(sc->sc_evdev, EVDEV_FLAG_MT_STCOMPAT);
	FUNC10(sc->sc_evdev, EVDEV_FLAG_MT_AUTOREL);
	FUNC17(sc->sc_evdev, INPUT_PROP_DIRECT);
	FUNC16(sc->sc_evdev, EV_SYN);
	FUNC16(sc->sc_evdev, EV_ABS);

	FUNC15(sc->sc_evdev, ABS_MT_SLOT, 0, 0,
	    MAX_TOUCH_ID, 0, 0, 0);
	FUNC15(sc->sc_evdev, ABS_MT_TRACKING_ID, 0, -1,
	    MAX_TOUCH_ID, 0, 0, 0);
	FUNC15(sc->sc_evdev, ABS_MT_POSITION_X, 0, 0,
	    SCREEN_WIDTH, 0, 0, SCREEN_RES_X);
	FUNC15(sc->sc_evdev, ABS_MT_POSITION_Y, 0, 0,
	    SCREEN_HEIGHT, 0, 0, SCREEN_RES_Y);

	err = FUNC9(sc->sc_evdev, &sc->sc_mtx);
	if (err) {
		FUNC8(sc->sc_evdev);
		sc->sc_evdev = NULL;	/* Avoid double free */
		return;
	}

	sc->touch_buf[FT5406_NUM_POINTS] = NO_POINTS;
	FUNC2(&sc->sc_callout, &sc->sc_mtx, 0);
}