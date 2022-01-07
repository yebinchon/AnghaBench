
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ enetMode; } ;
typedef TYPE_1__ t_Memac ;
typedef scalar_t__ e_EnetMode ;


 int ENET_INTERFACE_FROM_MODE (scalar_t__) ;
 scalar_t__ MAKE_ENET_MODE (int ,int ) ;
 int MEMAC_MII_WritePhyReg (TYPE_1__*,int ,int,int) ;
 int PHY_SGMII_CR_DEF_VAL ;
 int PHY_SGMII_CR_PHY_RESET ;
 int PHY_SGMII_CR_RESET_AN ;
 int PHY_SGMII_DEV_ABILITY_SGMII ;
 int PHY_SGMII_IF_MODE_AN ;
 int PHY_SGMII_IF_MODE_SGMII ;
 int PHY_SGMII_IF_SPEED_GIGABIT ;
 scalar_t__ e_ENET_MODE_SGMII_2500 ;
 int e_ENET_SPEED_1000 ;

__attribute__((used)) static void SetupSgmiiInternalPhy(t_Memac *p_Memac, uint8_t phyAddr)
{
    uint16_t tmpReg16;
    e_EnetMode enetMode;




    enetMode = p_Memac->enetMode;


    tmpReg16 = PHY_SGMII_IF_MODE_AN | PHY_SGMII_IF_MODE_SGMII;
    if ((p_Memac->enetMode) == e_ENET_MODE_SGMII_2500)
        tmpReg16 = PHY_SGMII_CR_PHY_RESET | PHY_SGMII_IF_SPEED_GIGABIT | PHY_SGMII_IF_MODE_SGMII;

    p_Memac->enetMode = MAKE_ENET_MODE(ENET_INTERFACE_FROM_MODE(p_Memac->enetMode), e_ENET_SPEED_1000);
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x14, tmpReg16);


    tmpReg16 = PHY_SGMII_DEV_ABILITY_SGMII;
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x4, tmpReg16);
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x13, 0x0007);
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x12, 0xa120);


    tmpReg16 = PHY_SGMII_CR_DEF_VAL | PHY_SGMII_CR_RESET_AN;
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x0, tmpReg16);


    p_Memac->enetMode = enetMode;
}
