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
struct funnel_softc {int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORESIGHT_LAR ; 
 int /*<<< orphan*/  CORESIGHT_UNLOCK ; 
 int /*<<< orphan*/  FUNNEL_DEVICEID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct funnel_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct funnel_softc *sc;

	sc = FUNC2(dev);

	/* Unlock Coresight */
	FUNC1(sc->res, CORESIGHT_LAR, CORESIGHT_UNLOCK);

	FUNC3("Device ID: %x\n", FUNC0(sc->res, FUNNEL_DEVICEID));

	return (0);
}