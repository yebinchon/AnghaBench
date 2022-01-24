#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rsb_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * rst; int /*<<< orphan*/  res; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct rsb_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rsb_spec ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct rsb_softc *sc;
	int error;

	sc = FUNC8(dev);
	FUNC14(&sc->mtx, FUNC7(dev), "rsb", MTX_DEF);

	sc->type = FUNC15(dev, compat_data)->ocd_data;

	if (FUNC4(dev, 0, 0, &sc->clk) == 0) {
		error = FUNC3(sc->clk);
		if (error != 0) {
			FUNC9(dev, "cannot enable clock\n");
			goto fail;
		}
	}
	if (FUNC11(dev, 0, 0, &sc->rst) == 0) {
		error = FUNC10(sc->rst);
		if (error != 0) {
			FUNC9(dev, "cannot de-assert reset\n");
			goto fail;
		}
	}

	if (FUNC0(dev, rsb_spec, &sc->res) != 0) {
		FUNC9(dev, "cannot allocate resources for device\n");
		error = ENXIO;
		goto fail;
	}

	sc->iicbus = FUNC6(dev, "iicbus", -1);
	if (sc->iicbus == NULL) {
		FUNC9(dev, "cannot add iicbus child device\n");
		error = ENXIO;
		goto fail;
	}

	FUNC1(dev);

	return (0);

fail:
	FUNC2(dev, rsb_spec, &sc->res);
	if (sc->rst != NULL)
		FUNC12(sc->rst);
	if (sc->clk != NULL)
		FUNC5(sc->clk);
	FUNC13(&sc->mtx);
	return (error);
}