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
struct bcm_pwm_softc {scalar_t__ sc_mem_res; scalar_t__ mode2; scalar_t__ mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_pwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct bcm_pwm_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct bcm_pwm_softc *sc;

	FUNC1(dev);

	sc = FUNC3(dev);
	sc->mode = 0;
	sc->mode2 = 0;
	(void)FUNC0(sc);
	if (sc->sc_mem_res)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

	return (0);
}