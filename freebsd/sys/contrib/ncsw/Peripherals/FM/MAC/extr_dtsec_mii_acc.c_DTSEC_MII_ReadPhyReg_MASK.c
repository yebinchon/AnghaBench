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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  scalar_t__ t_Handle ;
typedef  scalar_t__ t_Error ;
struct TYPE_2__ {int clkFreq; } ;
struct dtsec_mii_reg {struct dtsec_mii_reg* p_MiiMemMap; TYPE_1__ fmMacControllerDriver; } ;
typedef  struct dtsec_mii_reg t_Dtsec ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_NO_DEVICE ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dtsec_mii_reg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dtsec_mii_reg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

t_Error FUNC3(t_Handle h_Dtsec,
                             uint8_t  phyAddr,
                             uint8_t  reg,
                             uint16_t *p_Data)
{
    t_Dtsec               *p_Dtsec = (t_Dtsec *)h_Dtsec;
    struct dtsec_mii_reg  *miiregs;
    uint16_t               dtsec_freq;
    t_Error                    err;

    FUNC1(p_Dtsec, E_INVALID_HANDLE);
    FUNC1(p_Dtsec->p_MiiMemMap, E_INVALID_HANDLE);

    dtsec_freq = (uint16_t)(p_Dtsec->fmMacControllerDriver.clkFreq >> 1);
    miiregs = p_Dtsec->p_MiiMemMap;

    err = FUNC2(miiregs, phyAddr, reg, p_Data, dtsec_freq);

    if (*p_Data == 0xffff)
        FUNC0(MINOR, E_NO_DEVICE,
                     ("Read wrong data (0xffff): phyAddr 0x%x, reg 0x%x",
                      phyAddr, reg));
    if (err)
        FUNC0(MINOR, (t_Error)err, NO_MSG);

    return E_OK;
}