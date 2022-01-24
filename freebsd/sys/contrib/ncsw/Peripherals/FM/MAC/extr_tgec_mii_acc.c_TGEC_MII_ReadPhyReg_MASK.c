#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_5__ {int clkFreq; } ;
struct TYPE_6__ {int /*<<< orphan*/  mdio_cfg_status; int /*<<< orphan*/  mdio_data; int /*<<< orphan*/  mdio_command; int /*<<< orphan*/  mdio_regaddr; TYPE_1__ fmMacControllerDriver; struct TYPE_6__* p_MiiMemMap; } ;
typedef  TYPE_2__ t_TgecMiiAccessMemMap ;
typedef  TYPE_2__ t_Tgec ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MIIDATA_BUSY ; 
 int MIIMCOM_DIV_MASK ; 
 int MIIMCOM_DIV_SHIFT ; 
 int MIIMCOM_READ_CYCLE ; 
 int MIIMIND_BUSY ; 
 int MIIMIND_READ_ERROR ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

t_Error FUNC6(t_Handle h_Tgec,
                            uint8_t  phyAddr,
                            uint8_t  reg,
                            uint16_t *p_Data)
{
    t_Tgec                  *p_Tgec = (t_Tgec *)h_Tgec;
    t_TgecMiiAccessMemMap   *p_MiiAccess;
    uint32_t                cfgStatusReg;

    FUNC3(p_Tgec, E_INVALID_HANDLE);
    FUNC3(p_Tgec->p_MiiMemMap, E_INVALID_HANDLE);

    p_MiiAccess = p_Tgec->p_MiiMemMap;

    /* Configure MII */
    cfgStatusReg  = FUNC1(p_MiiAccess->mdio_cfg_status);
    cfgStatusReg &= ~MIIMCOM_DIV_MASK;
     /* (one half of fm clock => 2.5Mhz) */
    cfgStatusReg |=((((p_Tgec->fmMacControllerDriver.clkFreq*10)/2)/25) << MIIMCOM_DIV_SHIFT);
    FUNC4(p_MiiAccess->mdio_cfg_status, cfgStatusReg);

    while ((FUNC1(p_MiiAccess->mdio_cfg_status)) & MIIMIND_BUSY)
        FUNC5 (1);

    FUNC4(p_MiiAccess->mdio_command, phyAddr);

    FUNC4(p_MiiAccess->mdio_regaddr, reg);

    FUNC0();

    while ((FUNC1(p_MiiAccess->mdio_cfg_status)) & MIIMIND_BUSY)
        FUNC5 (1);

    FUNC4(p_MiiAccess->mdio_command, (uint32_t)(phyAddr | MIIMCOM_READ_CYCLE));

    FUNC0();

    while ((FUNC1(p_MiiAccess->mdio_data)) & MIIDATA_BUSY)
        FUNC5 (1);

    *p_Data =  (uint16_t)FUNC1(p_MiiAccess->mdio_data);

    cfgStatusReg  = FUNC1(p_MiiAccess->mdio_cfg_status);

    if (cfgStatusReg & MIIMIND_READ_ERROR)
        FUNC2(MINOR, E_INVALID_VALUE,
                     ("Read Error: phyAddr 0x%x, dev 0x%x, reg 0x%x, cfgStatusReg 0x%x",
                      ((phyAddr & 0xe0)>>5), (phyAddr & 0x1f), reg, cfgStatusReg));

    return E_OK;
}