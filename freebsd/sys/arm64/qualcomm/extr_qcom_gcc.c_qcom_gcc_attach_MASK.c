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
struct qcom_gcc_softc {int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct qcom_gcc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  qcom_gcc_spec ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_gcc_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct qcom_gcc_softc *sc;

	sc = FUNC1(dev);

	if (FUNC0(dev, qcom_gcc_spec, &sc->res) != 0) {
		FUNC2(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	/*
	 * Enable debug unit.
	 * This is required for Coresight operation.
	 * This also enables USB clock branch.
	 */
	FUNC3(sc);

	return (0);
}