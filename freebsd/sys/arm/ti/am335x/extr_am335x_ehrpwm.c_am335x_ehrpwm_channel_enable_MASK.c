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
 int /*<<< orphan*/  FUNC2 (struct am335x_ehrpwm_softc*,int /*<<< orphan*/ ,int) ; 
 struct am335x_ehrpwm_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, u_int channel, bool enable)
{
	struct am335x_ehrpwm_softc *sc;

	if (channel >= NUM_CHANNELS)
		return (EINVAL);

	sc = FUNC3(dev);

	FUNC0(sc);
	FUNC2(sc, channel, enable);
	FUNC1(sc);

	return (0);
}