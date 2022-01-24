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
struct i2c_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  rb_sdapin; int /*<<< orphan*/  rb_sclpin; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct i2c_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct i2c_softc *sc;
	int error;

	sc = FUNC3(dev);

	if ((error = FUNC0(sc->dev)) != 0) {
		FUNC4(sc->dev, "cannot detach child devices\n");
		return (error);
	}

	if (sc->iicbus != NULL)
		FUNC2(dev, sc->iicbus);

	/* Release bus-recover pins; gpio_pin_release() handles NULL args. */
	FUNC5(sc->rb_sclpin);
	FUNC5(sc->rb_sdapin);

	if (sc->res != NULL)
		FUNC1(dev, SYS_RES_MEMORY, 0, sc->res);

	return (0);
}