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
typedef  int /*<<< orphan*/  u_int ;
struct am335x_ehrpwm_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct am335x_ehrpwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct am335x_ehrpwm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct am335x_ehrpwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct am335x_ehrpwm_softc*,int /*<<< orphan*/ ) ; 
 struct am335x_ehrpwm_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, u_int channel, u_int period, u_int duty)
{
	struct am335x_ehrpwm_softc *sc;
	bool status;

	if (channel >= NUM_CHANNELS)
		return (EINVAL);

	sc = FUNC4(dev);

	FUNC0(sc);
	status = FUNC3(sc, period);
	if (status)
		FUNC2(sc, channel, duty);
	FUNC1(sc);

	return (status ? 0 : EINVAL);
}