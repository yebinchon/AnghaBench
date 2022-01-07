
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {int clkFreq; } ;
struct TYPE_6__ {int mdio_cfg_status; int mdio_data; int mdio_command; int mdio_regaddr; TYPE_1__ fmMacControllerDriver; struct TYPE_6__* p_MiiMemMap; } ;
typedef TYPE_2__ t_TgecMiiAccessMemMap ;
typedef TYPE_2__ t_Tgec ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int CORE_MemoryBarrier () ;
 int E_INVALID_HANDLE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int GET_UINT32 (int ) ;
 int MIIDATA_BUSY ;
 int MIIMCOM_DIV_MASK ;
 int MIIMCOM_DIV_SHIFT ;
 int MIIMCOM_READ_CYCLE ;
 int MIIMIND_BUSY ;
 int MIIMIND_READ_ERROR ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 int WRITE_UINT32 (int ,int) ;
 int XX_UDelay (int) ;

t_Error TGEC_MII_ReadPhyReg(t_Handle h_Tgec,
                            uint8_t phyAddr,
                            uint8_t reg,
                            uint16_t *p_Data)
{
    t_Tgec *p_Tgec = (t_Tgec *)h_Tgec;
    t_TgecMiiAccessMemMap *p_MiiAccess;
    uint32_t cfgStatusReg;

    SANITY_CHECK_RETURN_ERROR(p_Tgec, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Tgec->p_MiiMemMap, E_INVALID_HANDLE);

    p_MiiAccess = p_Tgec->p_MiiMemMap;


    cfgStatusReg = GET_UINT32(p_MiiAccess->mdio_cfg_status);
    cfgStatusReg &= ~MIIMCOM_DIV_MASK;

    cfgStatusReg |=((((p_Tgec->fmMacControllerDriver.clkFreq*10)/2)/25) << MIIMCOM_DIV_SHIFT);
    WRITE_UINT32(p_MiiAccess->mdio_cfg_status, cfgStatusReg);

    while ((GET_UINT32(p_MiiAccess->mdio_cfg_status)) & MIIMIND_BUSY)
        XX_UDelay (1);

    WRITE_UINT32(p_MiiAccess->mdio_command, phyAddr);

    WRITE_UINT32(p_MiiAccess->mdio_regaddr, reg);

    CORE_MemoryBarrier();

    while ((GET_UINT32(p_MiiAccess->mdio_cfg_status)) & MIIMIND_BUSY)
        XX_UDelay (1);

    WRITE_UINT32(p_MiiAccess->mdio_command, (uint32_t)(phyAddr | MIIMCOM_READ_CYCLE));

    CORE_MemoryBarrier();

    while ((GET_UINT32(p_MiiAccess->mdio_data)) & MIIDATA_BUSY)
        XX_UDelay (1);

    *p_Data = (uint16_t)GET_UINT32(p_MiiAccess->mdio_data);

    cfgStatusReg = GET_UINT32(p_MiiAccess->mdio_cfg_status);

    if (cfgStatusReg & MIIMIND_READ_ERROR)
        RETURN_ERROR(MINOR, E_INVALID_VALUE,
                     ("Read Error: phyAddr 0x%x, dev 0x%x, reg 0x%x, cfgStatusReg 0x%x",
                      ((phyAddr & 0xe0)>>5), (phyAddr & 0x1f), reg, cfgStatusReg));

    return E_OK;
}
