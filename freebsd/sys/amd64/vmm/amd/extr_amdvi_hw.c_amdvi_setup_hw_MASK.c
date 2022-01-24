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
struct amdvi_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdvi_softc*) ; 
 int FUNC1 (struct amdvi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdvi_softc*) ; 
 int FUNC3 (struct amdvi_softc*) ; 
 int FUNC4 (struct amdvi_softc*) ; 
 int FUNC5 (struct amdvi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdvi_softc*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int
FUNC9(struct amdvi_softc *softc)
{
	device_t dev;
	int status;

	dev = softc->dev;

	FUNC2(softc);

	FUNC6(softc);

	if ((status = FUNC7(dev)) != 0) {
		FUNC8(dev, "PCI capability.\n");
		return (status);
	}
	if ((status = FUNC3(softc)) != 0) {
		FUNC8(dev, "Couldn't configure command buffer.\n");
		return (status);
	}
	if ((status = FUNC5(softc)) != 0) {
		FUNC8(dev, "Couldn't configure event buffer.\n");
		return (status);
	}
	if ((status = FUNC4(softc)) != 0) {
		FUNC8(dev, "Couldn't configure device table.\n");
		return (status);
	}
	if ((status = FUNC1(softc)) != 0) {
		return (status);
	}
	FUNC0(softc);
	return (0);
}