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
struct memac_cfg {int /*<<< orphan*/  h_App; int /*<<< orphan*/  f_Event; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  exceptions; int /*<<< orphan*/  macId; int /*<<< orphan*/  enetMode; struct memac_mii_access_mem_map* p_MiiMemMap; struct memac_regs* p_MemMap; int /*<<< orphan*/  addr; struct memac_cfg* p_MemacDriverParam; int /*<<< orphan*/  fmMacControllerDriver; } ;
typedef  struct memac_cfg t_Memac ;
typedef  struct memac_cfg* t_Handle ;
struct TYPE_4__ {uintptr_t baseAddr; int /*<<< orphan*/  h_App; int /*<<< orphan*/  f_Event; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  macId; int /*<<< orphan*/  enetMode; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ t_FmMacParams ;
struct memac_regs {int dummy; } ;
struct memac_mii_access_mem_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 uintptr_t MEMAC_TO_MII_OFFSET ; 
 int /*<<< orphan*/  MEMAC_default_exceptions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC5 (struct memac_cfg*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct memac_cfg*) ; 
 int /*<<< orphan*/  FUNC8 (struct memac_cfg*,int /*<<< orphan*/ ,int) ; 

t_Handle FUNC9(t_FmMacParams *p_FmMacParam)
{
    t_Memac             *p_Memac;
    struct memac_cfg    *p_MemacDriverParam;
    uintptr_t           baseAddr;

    FUNC3(p_FmMacParam, E_NULL_POINTER, NULL);

    baseAddr = p_FmMacParam->baseAddr;
    /* Allocate memory for the mEMAC data structure */
    p_Memac = (t_Memac *)FUNC6(sizeof(t_Memac));
    if (!p_Memac)
    {
        FUNC2(MAJOR, E_NO_MEMORY, ("mEMAC driver structure"));
        return NULL;
    }
    FUNC8(p_Memac, 0, sizeof(t_Memac));
    FUNC1(&p_Memac->fmMacControllerDriver);

    /* Allocate memory for the mEMAC driver parameters data structure */
    p_MemacDriverParam = (struct memac_cfg *)FUNC6(sizeof(struct memac_cfg));
    if (!p_MemacDriverParam)
    {
        FUNC2(MAJOR, E_NO_MEMORY, ("mEMAC driver parameters"));
        FUNC5(p_Memac);
        return NULL;
    }
    FUNC8(p_MemacDriverParam, 0, sizeof(struct memac_cfg));

    /* Plant parameter structure pointer */
    p_Memac->p_MemacDriverParam = p_MemacDriverParam;

    FUNC7(p_MemacDriverParam);

    p_Memac->addr           = FUNC0(p_FmMacParam->addr);

    p_Memac->p_MemMap       = (struct memac_regs *)FUNC4(baseAddr);
    p_Memac->p_MiiMemMap    = (struct memac_mii_access_mem_map*)FUNC4(baseAddr + MEMAC_TO_MII_OFFSET);

    p_Memac->enetMode       = p_FmMacParam->enetMode;
    p_Memac->macId          = p_FmMacParam->macId;
    p_Memac->exceptions     = MEMAC_default_exceptions;
    p_Memac->f_Exception    = p_FmMacParam->f_Exception;
    p_Memac->f_Event        = p_FmMacParam->f_Event;
    p_Memac->h_App          = p_FmMacParam->h_App;

    return p_Memac;
}