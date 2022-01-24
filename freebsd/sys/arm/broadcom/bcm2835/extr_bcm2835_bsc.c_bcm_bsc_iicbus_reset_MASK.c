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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct bcm_bsc_softc {int /*<<< orphan*/ * sc_iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_BSC_CLOCK ; 
 int BCM_BSC_CORE_CLK ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_bsc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IIC_ENOADDR ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_bsc_softc*) ; 
 struct bcm_bsc_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	struct bcm_bsc_softc *sc;
	uint32_t busfreq;

	sc = FUNC5(dev);
	FUNC0(sc);
	FUNC4(sc);
	if (sc->sc_iicbus == NULL)
		busfreq = 100000;
	else
		busfreq = FUNC3(sc->sc_iicbus, speed);
	FUNC2(sc, BCM_BSC_CLOCK, BCM_BSC_CORE_CLK / busfreq);
	FUNC1(sc);

	return (IIC_ENOADDR);
}