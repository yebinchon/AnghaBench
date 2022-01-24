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
typedef  int /*<<< orphan*/  uint32_t ;
struct timespec {int dummy; } ;
struct snvs_softc {int /*<<< orphan*/  dev; } ;
typedef  int sbintime_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_WRITE ; 
 int SBT_LSB ; 
 int /*<<< orphan*/  SNVS_LPSRTCLR ; 
 int /*<<< orphan*/  SNVS_LPSRTCMR ; 
 int /*<<< orphan*/  FUNC0 (struct snvs_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec*) ; 
 struct snvs_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snvs_softc*,int) ; 
 int FUNC4 (struct timespec) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct timespec *ts)
{
	struct snvs_softc *sc;
	sbintime_t sbt;

	sc = FUNC2(dev);

	/*
	 * The hardware format is the same as sbt (with fewer fractional bits),
	 * so first convert the time to sbt.  It takes two clock cycles for the
	 * counter to start after setting the enable bit, so add two SBT_LSBs to
	 * what we're about to set.
	 */
	sbt = FUNC4(*ts);
	sbt += 2 << SBT_LSB;
	FUNC3(sc, false);
	FUNC0(sc, SNVS_LPSRTCMR, (uint32_t)(sbt >> (SBT_LSB + 32)));
	FUNC0(sc, SNVS_LPSRTCLR, (uint32_t)(sbt >> (SBT_LSB)));
	FUNC3(sc, true);

	FUNC1(sc->dev, CLOCK_DBG_WRITE, ts); 

	return (0);
}