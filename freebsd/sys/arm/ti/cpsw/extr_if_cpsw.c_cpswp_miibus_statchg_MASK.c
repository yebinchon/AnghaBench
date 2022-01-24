#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct cpswp_softc {int /*<<< orphan*/  swsc; TYPE_1__* mii; int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int mii_media_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int CPSW_SL_MACTL_FULLDUPLEX ; 
 int CPSW_SL_MACTL_GIG ; 
 int CPSW_SL_MACTL_IFCTL_A ; 
 int CPSW_SL_MACTL_IFCTL_B ; 
#define  IFM_1000_CX 132 
#define  IFM_1000_LX 131 
#define  IFM_1000_SX 130 
#define  IFM_1000_T 129 
#define  IFM_100_TX 128 
 int IFM_FDX ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 struct cpswp_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct cpswp_softc *sc;
	uint32_t mac_control, reg;

	sc = FUNC5(dev);
	FUNC0(sc->swsc, (""));

	reg = FUNC1(sc->unit);
	mac_control = FUNC3(sc->swsc, reg);
	mac_control &= ~(CPSW_SL_MACTL_GIG | CPSW_SL_MACTL_IFCTL_A |
	    CPSW_SL_MACTL_IFCTL_B | CPSW_SL_MACTL_FULLDUPLEX);

	switch(FUNC2(sc->mii->mii_media_active)) {
	case IFM_1000_SX:
	case IFM_1000_LX:
	case IFM_1000_CX:
	case IFM_1000_T:
		mac_control |= CPSW_SL_MACTL_GIG;
		break;

	case IFM_100_TX:
		mac_control |= CPSW_SL_MACTL_IFCTL_A;
		break;
	}
	if (sc->mii->mii_media_active & IFM_FDX)
		mac_control |= CPSW_SL_MACTL_FULLDUPLEX;

	FUNC4(sc->swsc, reg, mac_control);
}