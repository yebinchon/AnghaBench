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
struct rsb_softc {int status; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int GLOBAL_INT_ENB ; 
 int INT_TRANS_OVER ; 
 int /*<<< orphan*/  FUNC1 (struct rsb_softc*) ; 
 int /*<<< orphan*/  RSB_CTRL ; 
 int RSB_I2C_TIMEOUT ; 
 int /*<<< orphan*/  RSB_INTS ; 
 int FUNC2 (struct rsb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rsb_softc*,int /*<<< orphan*/ ,int) ; 
 int START_TRANS ; 
 struct rsb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int hz ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct rsb_softc *sc;
	int error, retry;

	sc = FUNC4(dev);

	FUNC1(sc);

	/* Start the transfer */
	FUNC3(sc, RSB_CTRL, GLOBAL_INT_ENB | START_TRANS);

	/* Wait for transfer to complete */
	error = ETIMEDOUT;
	for (retry = RSB_I2C_TIMEOUT; retry > 0; retry--) {
		sc->status |= FUNC2(sc, RSB_INTS);
		if ((sc->status & INT_TRANS_OVER) != 0) {
			error = 0;
			break;
		}
		FUNC0((1000 * hz) / RSB_I2C_TIMEOUT);
	}
	if (error == 0 && (sc->status & INT_TRANS_OVER) == 0) {
		FUNC5(dev, "transfer error, status 0x%08x\n",
		    sc->status);
		error = EIO;
	}

	return (error);

}