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
struct i2c_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  I2CADD ; 
 int I2CMODE_MT ; 
 int I2CMODE_S ; 
 int /*<<< orphan*/  I2CSTAT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int RXTX_EN ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct i2c_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  i2c_spec ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct i2c_softc *sc;
	int reg;

	sc = FUNC5(dev);
	sc->dev = dev;

	FUNC8(&sc->mutex, FUNC4(dev), "I2C", MTX_DEF);

	if (FUNC1(dev, i2c_spec, sc->res)) {
		FUNC6(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC10(sc->res[0]);
	sc->bsh = FUNC9(sc->res[0]);

	sc->iicbus = FUNC3(dev, "iicbus", -1);
	if (sc->iicbus == NULL) {
		FUNC6(dev, "could not add iicbus child");
		FUNC7(&sc->mutex);
		return (ENXIO);
	}

	FUNC0(sc, I2CSTAT, 0);
	FUNC0(sc, I2CADD, 0x00);

	/* Mode */
	reg = (RXTX_EN);
        reg |= (I2CMODE_MT << I2CMODE_S);
	FUNC0(sc, I2CSTAT, reg);

	FUNC2(dev);

	return (0);
}