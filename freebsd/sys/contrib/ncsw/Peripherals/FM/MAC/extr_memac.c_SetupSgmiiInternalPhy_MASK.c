#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ enetMode; } ;
typedef  TYPE_1__ t_Memac ;
typedef  scalar_t__ e_EnetMode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int PHY_SGMII_CR_DEF_VAL ; 
 int PHY_SGMII_CR_PHY_RESET ; 
 int PHY_SGMII_CR_RESET_AN ; 
 int PHY_SGMII_DEV_ABILITY_SGMII ; 
 int PHY_SGMII_IF_MODE_AN ; 
 int PHY_SGMII_IF_MODE_SGMII ; 
 int PHY_SGMII_IF_SPEED_GIGABIT ; 
 scalar_t__ e_ENET_MODE_SGMII_2500 ; 
 int /*<<< orphan*/  e_ENET_SPEED_1000 ; 

__attribute__((used)) static void FUNC3(t_Memac *p_Memac, uint8_t phyAddr)
{
    uint16_t    tmpReg16;
    e_EnetMode  enetMode;

     /* In case the higher MACs are used (i.e. the MACs that should support 10G),
        speed=10000 is provided for SGMII ports. Temporary modify enet mode
        to 1G one, so MII functions can work correctly. */
    enetMode = p_Memac->enetMode;

    /* SGMII mode + AN enable */
    tmpReg16 = PHY_SGMII_IF_MODE_AN | PHY_SGMII_IF_MODE_SGMII;
    if ((p_Memac->enetMode) == e_ENET_MODE_SGMII_2500)
        tmpReg16 = PHY_SGMII_CR_PHY_RESET | PHY_SGMII_IF_SPEED_GIGABIT | PHY_SGMII_IF_MODE_SGMII;

    p_Memac->enetMode = FUNC1(FUNC0(p_Memac->enetMode), e_ENET_SPEED_1000);
    FUNC2(p_Memac, phyAddr, 0x14, tmpReg16);

    /* Device ability according to SGMII specification */
    tmpReg16 = PHY_SGMII_DEV_ABILITY_SGMII;
    FUNC2(p_Memac, phyAddr, 0x4, tmpReg16);

    /* Adjust link timer for SGMII  -
       According to Cisco SGMII specification the timer should be 1.6 ms.
       The link_timer register is configured in units of the clock.
       - When running as 1G SGMII, Serdes clock is 125 MHz, so
         unit = 1 / (125*10^6 Hz) = 8 ns.
         1.6 ms in units of 8 ns = 1.6ms / 8ns = 2 * 10^5 = 0x30d40
       - When running as 2.5G SGMII, Serdes clock is 312.5 MHz, so
         unit = 1 / (312.5*10^6 Hz) = 3.2 ns.
         1.6 ms in units of 3.2 ns = 1.6ms / 3.2ns = 5 * 10^5 = 0x7a120.
       Since link_timer value of 1G SGMII will be too short for 2.5 SGMII,
       we always set up here a value of 2.5 SGMII. */
    FUNC2(p_Memac, phyAddr, 0x13, 0x0007);
    FUNC2(p_Memac, phyAddr, 0x12, 0xa120);

    /* Restart AN */
    tmpReg16 = PHY_SGMII_CR_DEF_VAL | PHY_SGMII_CR_RESET_AN;
    FUNC2(p_Memac, phyAddr, 0x0, tmpReg16);

    /* Restore original enet mode */
    p_Memac->enetMode = enetMode;
}