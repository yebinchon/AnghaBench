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
struct rk_i2c_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * res; int /*<<< orphan*/ * intrhand; int /*<<< orphan*/  dev; int /*<<< orphan*/ * pclk; int /*<<< orphan*/ * sclk; int /*<<< orphan*/ * iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rk_i2c_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rk_i2c_spec ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct rk_i2c_softc *sc;
	int error;

	sc = FUNC5(dev);

	if ((error = FUNC0(dev)) != 0)
		return (error);

	if (sc->iicbus != NULL)
		if ((error = FUNC4(dev, sc->iicbus)) != 0)
			return (error);

	if (sc->sclk != NULL)
		FUNC3(sc->sclk);
	if (sc->pclk != NULL)
		FUNC3(sc->pclk);

	if (sc->intrhand != NULL)
		FUNC2(sc->dev, sc->res[1], sc->intrhand);

	FUNC1(dev, rk_i2c_spec, sc->res);

	FUNC6(&sc->mtx);

	return (0);
}