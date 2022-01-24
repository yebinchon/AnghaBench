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
typedef  int /*<<< orphan*/  u_char ;
struct rsb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int IIC_ENOADDR ; 
 int /*<<< orphan*/  RSB_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct rsb_softc*) ; 
 int FUNC1 (struct rsb_softc*,int /*<<< orphan*/ ) ; 
 int RSB_RESET_RETRY ; 
 int /*<<< orphan*/  FUNC2 (struct rsb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsb_softc*,int /*<<< orphan*/ ,int) ; 
 int SOFT_RESET ; 
 struct rsb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	struct rsb_softc *sc;
	int retry;

	sc = FUNC4(dev);

	FUNC0(sc);

	/* Write soft-reset bit and wait for it to self-clear. */
	FUNC3(sc, RSB_CTRL, SOFT_RESET);
	for (retry = RSB_RESET_RETRY; retry > 0; retry--)
		if ((FUNC1(sc, RSB_CTRL) & SOFT_RESET) == 0)
			break;

	FUNC2(sc);

	if (retry == 0) {
		FUNC5(dev, "soft reset timeout\n");
		return (ETIMEDOUT);
	}

	return (IIC_ENOADDR);
}