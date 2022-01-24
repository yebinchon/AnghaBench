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
struct rk_typec_phy_softc {int mode; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ERANGE ; 
 intptr_t RK3399_TYPEC_PHY_USB3 ; 
 struct rk_typec_phy_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phynode*) ; 
 intptr_t FUNC2 (struct phynode*) ; 

__attribute__((used)) static int
FUNC3(struct phynode *phynode, int mode)
{
	struct rk_typec_phy_softc *sc;
	intptr_t phy;
	device_t dev;

	dev = FUNC1(phynode);
	phy = FUNC2(phynode);
	sc = FUNC0(dev);

	if (phy != RK3399_TYPEC_PHY_USB3)
		return (ERANGE);

	sc->mode = mode;

	return (0);
}