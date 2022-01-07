
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int enetMode; } ;
typedef TYPE_1__ t_Memac ;
typedef int e_EnetMode ;


 int ENET_INTERFACE_FROM_MODE (int ) ;
 int MAKE_ENET_MODE (int ,int ) ;
 int MEMAC_MII_WritePhyReg (TYPE_1__*,int ,int,int) ;
 int PHY_SGMII_CR_DEF_VAL ;
 int PHY_SGMII_CR_RESET_AN ;
 int PHY_SGMII_DEV_ABILITY_1000X ;
 int PHY_SGMII_IF_MODE_1000X ;
 int e_ENET_SPEED_1000 ;

__attribute__((used)) static void SetupSgmiiInternalPhyBaseX(t_Memac *p_Memac, uint8_t phyAddr)
{
    uint16_t tmpReg16;
    e_EnetMode enetMode;




    enetMode = p_Memac->enetMode;
    p_Memac->enetMode = MAKE_ENET_MODE(ENET_INTERFACE_FROM_MODE(p_Memac->enetMode), e_ENET_SPEED_1000);


    tmpReg16 = PHY_SGMII_IF_MODE_1000X;
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x14, tmpReg16);


    tmpReg16 = PHY_SGMII_DEV_ABILITY_1000X;
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x4, tmpReg16);
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x13, 0x002f);
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x12, 0xaf08);


    tmpReg16 = PHY_SGMII_CR_DEF_VAL | PHY_SGMII_CR_RESET_AN;
    MEMAC_MII_WritePhyReg(p_Memac, phyAddr, 0x0, tmpReg16);


    p_Memac->enetMode = enetMode;
}
