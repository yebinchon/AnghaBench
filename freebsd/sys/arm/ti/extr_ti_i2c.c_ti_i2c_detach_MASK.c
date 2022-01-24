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
struct ti_i2c_softc {scalar_t__ sc_iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ti_i2c_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ti_i2c_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct ti_i2c_softc *sc;
	int rv;

 	sc = FUNC3(dev);

	if ((rv = FUNC1(dev)) != 0) {
		FUNC4(dev, "cannot detach child devices\n");
		return (rv);
	}

    if (sc->sc_iicbus &&
	    (rv = FUNC2(dev, sc->sc_iicbus)) != 0)
		return (rv);

	FUNC5(dev);
	FUNC0(sc);

	return (0);
}