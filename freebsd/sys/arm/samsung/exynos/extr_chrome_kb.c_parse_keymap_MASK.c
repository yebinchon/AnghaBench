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
struct ckb_softc {int cols; int rows; int /*<<< orphan*/ * keymap; } ;
typedef  int pcell_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct ckb_softc*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct ckb_softc *sc, pcell_t *keymap, size_t len)
{
	int i;

	sc->keymap = FUNC1(sc->cols * sc->rows * sizeof(sc->keymap[0]),
	    M_DEVBUF, M_NOWAIT | M_ZERO);
	if (sc->keymap == NULL) {
		return (ENOMEM);
	}

	for (i = 0; i < len; i++) {
		/* 
		 * Return value is ignored, we just write whatever fits into
		 * specified number of rows and columns and silently ignore
		 * everything else.
		 * Keymap entries follow this format: 0xRRCCKKKK
		 * RR - row number, CC - column number, KKKK - key code
		 */
		FUNC0(sc, (keymap[i] >> 16) & 0xff,
		    (keymap[i] >> 24) & 0xff,
		    keymap[i] & 0xffff);
	}

	return (0);
}