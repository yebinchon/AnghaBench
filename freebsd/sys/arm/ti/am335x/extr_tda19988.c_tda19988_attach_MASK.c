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
struct tda19988_softc {int sc_cec_addr; int /*<<< orphan*/  sc_edid_len; int /*<<< orphan*/  sc_edid; int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDID_LENGTH ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tda19988_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tda19988_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct tda19988_softc *sc;
	phandle_t node;

	sc = FUNC2(dev);

	sc->sc_dev = dev;
	sc->sc_addr = FUNC4(dev);
	sc->sc_cec_addr = (0x34 << 1); /* hardcoded */
	sc->sc_edid = FUNC5(EDID_LENGTH, M_DEVBUF, M_WAITOK | M_ZERO);
	sc->sc_edid_len = EDID_LENGTH;

	FUNC3(dev, "NXP TDA19988 HDMI transmitter");

	node = FUNC6(dev);
	FUNC0(FUNC1(node), dev);

	FUNC7(sc);

	return (0);
}