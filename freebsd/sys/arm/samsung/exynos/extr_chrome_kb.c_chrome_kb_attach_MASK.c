#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* kb_data; } ;
struct ckb_softc {int cols; int /*<<< orphan*/  sc_repeat_callout; int /*<<< orphan*/ * sc_fkeymap; int /*<<< orphan*/  sc_accmap; int /*<<< orphan*/  sc_keymap; scalar_t__* scan; scalar_t__* scan_local; TYPE_1__ sc_kbd; int /*<<< orphan*/  gpio; int /*<<< orphan*/  rows; int /*<<< orphan*/  dev; int /*<<< orphan*/ * gpio_dev; int /*<<< orphan*/ * keymap; } ;
typedef  TYPE_1__ keyboard_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CKB_NFKEY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KBD_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  KB_OTHER ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  accent_map ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  ckb_ec_intr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ckb_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * fkey_tab ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  key_map ; 
 void* FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ckb_softc*) ; 
 int FUNC16 (struct ckb_softc*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct ckb_softc *sc;
	keyboard_t *kbd;
	int error;
	int rid;
	int i;

	sc = FUNC8(dev);

	sc->dev = dev;
	sc->keymap = NULL;

	if ((error = FUNC16(sc)) != 0)
		return error;

	sc->gpio_dev = FUNC7(FUNC6("gpio"), 0);
	if (sc->gpio_dev == NULL) {
		FUNC10(sc->dev, "Can't find gpio device.\n");
		return (ENXIO);
	}

#if 0
	device_printf(sc->dev, "Keyboard matrix [%dx%d]\n",
	    sc->cols, sc->rows);
#endif

	FUNC15(sc->gpio, ckb_ec_intr, sc);

	kbd = &sc->sc_kbd;
	rid = 0;

	sc->scan_local = FUNC14(sc->cols, M_DEVBUF, M_NOWAIT);
	sc->scan = FUNC14(sc->cols, M_DEVBUF, M_NOWAIT);

	for (i = 0; i < sc->cols; i++) {
		sc->scan_local[i] = 0;
		sc->scan[i] = 0;
	}

	FUNC11(kbd, KBD_DRIVER_NAME, KB_OTHER,
	    FUNC9(dev), 0, 0, 0);
	kbd->kb_data = (void *)sc;

	sc->sc_keymap = key_map;
        sc->sc_accmap = accent_map;
	for (i = 0; i < CKB_NFKEY; i++) {
		sc->sc_fkeymap[i] = fkey_tab[i];
        }

	FUNC13(kbd, &sc->sc_keymap, &sc->sc_accmap,
	    sc->sc_fkeymap, CKB_NFKEY);

	FUNC1(kbd);
	FUNC5(kbd);
	FUNC3(kbd);

	FUNC4(&sc->sc_repeat_callout, 0);

	FUNC2(kbd);

	if (FUNC12(kbd) < 0) {
		return (ENXIO);
	}
	FUNC0(kbd);

	return (0);
}