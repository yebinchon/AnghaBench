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
struct aml8726_sdxc_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  dmatag; int /*<<< orphan*/  dmamap; int /*<<< orphan*/  ih_cookie; int /*<<< orphan*/ * cmd; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_SDXC_IRQ_ENABLE_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC4 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  aml8726_sdxc_spec ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aml8726_sdxc_softc* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct aml8726_sdxc_softc *sc = FUNC11(dev);

	FUNC0(sc);

	if (sc->cmd != NULL) {
		FUNC2(sc);
		return (EBUSY);
	}

	/*
	 * Turn off the power, reset the hardware state machine,
	 * and disable the interrupts.
	 */
	FUNC4(sc);
	FUNC5(sc);
	FUNC3(sc, AML_SDXC_IRQ_ENABLE_REG, 0);

	FUNC2(sc);

	FUNC8(dev);

	FUNC10(dev, sc->res[1], sc->ih_cookie);

	FUNC7(sc->dmatag, sc->dmamap);

	FUNC6(sc->dmatag);

	FUNC1(sc);

	FUNC9(dev, aml8726_sdxc_spec, sc->res);

	return (0);
}