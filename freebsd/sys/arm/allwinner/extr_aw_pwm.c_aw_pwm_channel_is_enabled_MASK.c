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
struct aw_pwm_softc {int enabled; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct aw_pwm_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(device_t dev, u_int channel, bool *enabled)
{
	struct aw_pwm_softc *sc;

	sc = FUNC0(dev);

	*enabled = sc->enabled;

	return (0);
}