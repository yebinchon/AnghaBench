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
struct bcm_mbox_softc {scalar_t__* have_message; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_mbox_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_mbox_softc*) ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int /*<<< orphan*/  REG_WRITE ; 
 int STATUS_FULL ; 
 struct bcm_mbox_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bcm_mbox_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_mbox_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int chan, uint32_t data)
{
	int limit = 1000;
	struct bcm_mbox_softc *sc = FUNC4(dev);

	FUNC5("bcm_mbox_write: chan %d, data %08x\n", chan, data);
	FUNC1(sc);
	sc->have_message[chan] = 0;
	while ((FUNC6(sc, REG_STATUS) & STATUS_FULL) && --limit)
		FUNC0(5);
	if (limit == 0) {
		FUNC8("bcm_mbox_write: STATUS_FULL stuck");
		FUNC3(sc);
		return (EAGAIN);
	}
	FUNC7(sc, REG_WRITE, FUNC2(chan, data));
	FUNC3(sc);

	return (0);
}