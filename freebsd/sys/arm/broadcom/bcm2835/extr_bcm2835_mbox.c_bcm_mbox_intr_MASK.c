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
struct bcm_mbox_softc {int* have_message; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_mbox_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_mbox_softc*) ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int STATUS_EMPTY ; 
 scalar_t__ FUNC2 (struct bcm_mbox_softc*,int*) ; 
 int FUNC3 (struct bcm_mbox_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct bcm_mbox_softc *sc = arg;
	int chan;

	FUNC0(sc);
	while (!(FUNC3(sc, REG_STATUS) & STATUS_EMPTY))
		if (FUNC2(sc, &chan) == 0) {
			sc->have_message[chan] = 1;
			FUNC4(&sc->have_message[chan]);
		}
	FUNC1(sc);
}