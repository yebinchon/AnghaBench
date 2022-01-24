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
struct bcm_mbox_softc {scalar_t__* have_message; scalar_t__* msg; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_mbox_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_mbox_softc*) ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int STATUS_EMPTY ; 
 scalar_t__ FUNC3 (struct bcm_mbox_softc*,int*) ; 
 int /*<<< orphan*/  cold ; 
 struct bcm_mbox_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int hz ; 
 int FUNC7 (struct bcm_mbox_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int chan, uint32_t *data)
{
	struct bcm_mbox_softc *sc = FUNC4(dev);
	int err, read_chan;

	FUNC6("bcm_mbox_read: chan %d\n", chan);

	err = 0;
	FUNC1(sc);
	if (!cold) {
		if (sc->have_message[chan] == 0) {
			if (FUNC8(&sc->have_message[chan], &sc->lock, 0,
			    "mbox", 10*hz) != 0) {
				FUNC5(dev, "timeout waiting for message on chan %d\n", chan);
				err = ETIMEDOUT;
			}
		}
	} else {
		do {
			/* Wait for a message */
			while ((FUNC7(sc, REG_STATUS) & STATUS_EMPTY))
				;
			/* Read the message */
			if (FUNC3(sc, &read_chan) != 0) {
				err = EINVAL;
				goto out;
			}
		} while (read_chan != chan);
	}
	/*
	 *  get data from intr handler, the same channel is never coming
	 *  because of holding sc lock.
	 */
	*data = FUNC0(sc->msg[chan]);
	sc->msg[chan] = 0;
	sc->have_message[chan] = 0;
out:
	FUNC2(sc);
	FUNC6("bcm_mbox_read: chan %d, data %08x\n", chan, *data);

	return (err);
}