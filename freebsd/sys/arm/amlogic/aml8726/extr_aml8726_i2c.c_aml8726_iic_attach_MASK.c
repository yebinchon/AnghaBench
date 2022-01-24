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
struct aml8726_iic_softc {int /*<<< orphan*/  res; int /*<<< orphan*/ * iicbb; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_iic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_iic_softc*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  aml8726_iic_spec ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct aml8726_iic_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct aml8726_iic_softc *sc = FUNC5(dev);
	int error;

	sc->dev = dev;

	if (FUNC2(dev, aml8726_iic_spec, sc->res)) {
		FUNC6(dev, "can not allocate resources for device\n");
		return (ENXIO);
	}

	FUNC1(sc);

	sc->iicbb = FUNC4(dev, "iicbb", -1);

	if (sc->iicbb == NULL) {
		FUNC6(dev, "could not add iicbb\n");
		error = ENXIO;
		goto fail;
	}

	error = FUNC7(sc->iicbb);

	if (error) {
		FUNC6(dev, "could not attach iicbb\n");
		goto fail;
	}

	return (0);

fail:
	FUNC0(sc);
	FUNC3(dev, aml8726_iic_spec, sc->res);

	return (error);
}