#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ckb_softc {int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_poll_thread; } ;
struct TYPE_3__ {struct ckb_softc* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  CKB_FLAG_POLLING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  curthread ; 

__attribute__((used)) static int
FUNC2(keyboard_t *kbd, int on)
{
	struct ckb_softc *sc;

	sc = kbd->kb_data;

	FUNC0();
	if (on) {
		sc->sc_flags |= CKB_FLAG_POLLING;
		sc->sc_poll_thread = curthread;
	} else {
		sc->sc_flags &= ~CKB_FLAG_POLLING;
	}
	FUNC1();

	return (0);
}