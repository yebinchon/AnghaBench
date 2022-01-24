#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ckb_softc {int sc_repeat_key; int sc_flags; int* scan; int cols; int rows; int* scan_local; int /*<<< orphan*/  sc_repeat_callout; int /*<<< orphan*/  gpio; int /*<<< orphan*/  gpio_dev; scalar_t__ sc_repeating; } ;
struct TYPE_4__ {struct ckb_softc* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CKB_FLAG_POLLING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EC_CMD_MKBP_STATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int NOKEY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ckb_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ckb_repeat ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int hz ; 
 int FUNC7 (struct ckb_softc*,int,int) ; 

__attribute__((used)) static uint32_t
FUNC8(keyboard_t *kbd, int wait)
{
	struct ckb_softc *sc;
	int i,j;
	uint16_t key;
	int oldbit;
	int newbit;
	int status;

	sc = kbd->kb_data;

	FUNC0();

	if (!FUNC3(kbd))
		return (NOKEY);

	if (sc->sc_repeating) {
		sc->sc_repeating = 0;
		FUNC4(&sc->sc_repeat_callout, hz / 10,
                    ckb_repeat, sc);
		return (sc->sc_repeat_key);
	}

	if (sc->sc_flags & CKB_FLAG_POLLING) {
		for (;;) {
			FUNC2(sc->gpio_dev, sc->gpio, &status);
			if (status == 0) {
				if (FUNC6(EC_CMD_MKBP_STATE, sc->scan,
					sc->cols,
				    sc->scan, sc->cols)) {
					return (NOKEY);
				}
				break;
			}
			if (!wait) {
				return (NOKEY);
			}
			FUNC1(1000);
		}
	}

	for (i = 0; i < sc->cols; i++) {
		for (j = 0; j < sc->rows; j++) {
			oldbit = (sc->scan_local[i] & (1 << j));
			newbit = (sc->scan[i] & (1 << j));

			if (oldbit == newbit)
				continue;

			key = FUNC7(sc, i, j);
			if (key == 0) {
				continue;
			}

			if (newbit > 0) {
				/* key pressed */
				sc->scan_local[i] |= (1 << j);

				/* setup repeating */
				sc->sc_repeat_key = key;
				FUNC4(&sc->sc_repeat_callout,
				    hz / 2, ckb_repeat, sc);

			} else {
				/* key released */
				sc->scan_local[i] &= ~(1 << j);

				/* release flag */
				key |= 0x80;

				/* unsetup repeating */
				sc->sc_repeat_key = -1;
				FUNC5(&sc->sc_repeat_callout);
			}

			return (key);
		}
	}

	return (NOKEY);
}