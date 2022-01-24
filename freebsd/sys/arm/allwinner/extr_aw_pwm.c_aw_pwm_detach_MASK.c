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
struct aw_pwm_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/ * busdev; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  aw_pwm_spec ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct aw_pwm_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct aw_pwm_softc *sc;
	int error;

	sc = FUNC3(dev);

	if ((error = FUNC0(sc->dev)) != 0) {
		FUNC4(sc->dev, "cannot detach child devices\n");
		return (error);
	}

	if (sc->busdev != NULL)
		FUNC2(dev, sc->busdev);

	if (sc->res != NULL)
		FUNC1(dev, aw_pwm_spec, &sc->res);

	return (0);
}