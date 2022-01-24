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
typedef  int uint8_t ;
struct rk805_softc {scalar_t__ type; int /*<<< orphan*/  intr_hook; void* dev; } ;
typedef  void* device_t ;

/* Variables and functions */
 scalar_t__ RK805 ; 
 int /*<<< orphan*/  RK805_CHIP_NAME ; 
 int /*<<< orphan*/  RK805_CHIP_VER ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rk805_softc* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,...) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC4(void *pdev)
{
	struct rk805_softc *sc;
	device_t dev;
	uint8_t data[2];
	int err;

	dev = pdev;
	sc = FUNC1(dev);
	sc->dev = dev;

	/* No version register in RK808 */
	if (bootverbose && sc->type == RK805) {
		err = FUNC3(dev, RK805_CHIP_NAME, data, 1);
		if (err != 0) {
			FUNC2(dev, "Cannot read chip name reg\n");
			return;
		}
		err = FUNC3(dev, RK805_CHIP_VER, data + 1, 1);
		if (err != 0) {
			FUNC2(dev, "Cannot read chip version reg\n");
			return;
		}
		FUNC2(dev, "Chip Name: %x\n",
		    data[0] << 4 | ((data[1] >> 4) & 0xf));
		FUNC2(dev, "Chip Version: %x\n", data[1] & 0xf);
	}

	FUNC0(&sc->intr_hook);
}