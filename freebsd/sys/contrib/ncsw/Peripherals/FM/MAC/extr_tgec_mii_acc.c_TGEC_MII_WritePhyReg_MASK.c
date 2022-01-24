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
typedef  int uint16_t ;
struct TYPE_5__ {int clkFreq; } ;
struct TYPE_6__ {int /*<<< orphan*/  mdio_data; int /*<<< orphan*/  mdio_cfg_status; int /*<<< orphan*/  mdio_regaddr; int /*<<< orphan*/  mdio_command; TYPE_1__ fmMacControllerDriver; struct TYPE_6__* p_MiiMemMap; } ;
typedef  TYPE_2__ t_TgecMiiAccessMemMap ;
typedef  TYPE_2__ t_Tgec ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MIIDATA_BUSY ; 
 int MIIMCOM_DIV_MASK ; 
 int MIIMCOM_DIV_SHIFT ; 
 int MIIMIND_BUSY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

t_Error FUNC5(t_Handle   h_Tgec,
                             uint8_t    phyAddr,
                             uint8_t    reg,
                             uint16_t   data)
{
    t_Tgec                  *p_Tgec = (t_Tgec *)h_Tgec;
    t_TgecMiiAccessMemMap   *p_MiiAccess;
    uint32_t                cfgStatusReg;

    FUNC2(p_Tgec, E_INVALID_HANDLE);
    FUNC2(p_Tgec->p_MiiMemMap, E_INVALID_HANDLE);

    p_MiiAccess = p_Tgec->p_MiiMemMap;

    /* Configure MII */
    cfgStatusReg  = FUNC1(p_MiiAccess->mdio_cfg_status);
    cfgStatusReg &= ~MIIMCOM_DIV_MASK;
     /* (one half of fm clock => 2.5Mhz) */
    cfgStatusReg |=((((p_Tgec->fmMacControllerDriver.clkFreq*10)/2)/25) << MIIMCOM_DIV_SHIFT);
    FUNC3(p_MiiAccess->mdio_cfg_status, cfgStatusReg);

    while ((FUNC1(p_MiiAccess->mdio_cfg_status)) & MIIMIND_BUSY)
        FUNC4 (1);

    FUNC3(p_MiiAccess->mdio_command, phyAddr);

    FUNC3(p_MiiAccess->mdio_regaddr, reg);

    FUNC0();

    while ((FUNC1(p_MiiAccess->mdio_cfg_status)) & MIIMIND_BUSY)
        FUNC4 (1);

    FUNC3(p_MiiAccess->mdio_data, data);

    FUNC0();

    while ((FUNC1(p_MiiAccess->mdio_data)) & MIIDATA_BUSY)
        FUNC4 (1);

    return E_OK;
}