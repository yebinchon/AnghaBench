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
typedef  int /*<<< orphan*/  t_TgecMiiAccessMemMap ;
struct tgec_cfg {int /*<<< orphan*/  h_App; int /*<<< orphan*/  f_Event; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  mdioIrq; int /*<<< orphan*/  exceptions; int /*<<< orphan*/  macId; int /*<<< orphan*/  enetMode; int /*<<< orphan*/  addr; int /*<<< orphan*/ * p_MiiMemMap; struct tgec_regs* p_MemMap; struct tgec_cfg* p_TgecDriverParam; int /*<<< orphan*/  fmMacControllerDriver; } ;
typedef  struct tgec_cfg t_Tgec ;
typedef  struct tgec_cfg* t_Handle ;
struct TYPE_4__ {uintptr_t baseAddr; int /*<<< orphan*/  h_App; int /*<<< orphan*/  f_Event; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  mdioIrq; int /*<<< orphan*/  macId; int /*<<< orphan*/  enetMode; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ t_FmMacParams ;
struct tgec_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_exceptions ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 uintptr_t TGEC_TO_MII_OFFSET ; 
 scalar_t__ FUNC4 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC5 (struct tgec_cfg*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct tgec_cfg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tgec_cfg*,int /*<<< orphan*/ ,int) ; 

t_Handle FUNC9(t_FmMacParams *p_FmMacParam)
{
    t_Tgec              *p_Tgec;
    struct tgec_cfg     *p_TgecDriverParam;
    uintptr_t           baseAddr;

    FUNC3(p_FmMacParam, E_NULL_POINTER, NULL);

    baseAddr = p_FmMacParam->baseAddr;
    /* allocate memory for the UCC GETH data structure. */
    p_Tgec = (t_Tgec *)FUNC6(sizeof(t_Tgec));
    if (!p_Tgec)
    {
        FUNC2(MAJOR, E_NO_MEMORY, ("10G MAC driver structure"));
        return NULL;
    }
    FUNC8(p_Tgec, 0, sizeof(t_Tgec));
    FUNC1(&p_Tgec->fmMacControllerDriver);

    /* allocate memory for the 10G MAC driver parameters data structure. */
    p_TgecDriverParam = (struct tgec_cfg *) FUNC6(sizeof(struct tgec_cfg));
    if (!p_TgecDriverParam)
    {
        FUNC2(MAJOR, E_NO_MEMORY, ("10G MAC driver parameters"));
        FUNC5(p_Tgec);
        return NULL;
    }
    FUNC8(p_TgecDriverParam, 0, sizeof(struct tgec_cfg));

    /* Plant parameter structure pointer */
    p_Tgec->p_TgecDriverParam = p_TgecDriverParam;

    FUNC7(p_TgecDriverParam);

    p_Tgec->p_MemMap        = (struct tgec_regs *)FUNC4(baseAddr);
    p_Tgec->p_MiiMemMap     = (t_TgecMiiAccessMemMap *)FUNC4(baseAddr + TGEC_TO_MII_OFFSET);
    p_Tgec->addr            = FUNC0(p_FmMacParam->addr);
    p_Tgec->enetMode        = p_FmMacParam->enetMode;
    p_Tgec->macId           = p_FmMacParam->macId;
    p_Tgec->exceptions      = DEFAULT_exceptions;
    p_Tgec->mdioIrq         = p_FmMacParam->mdioIrq;
    p_Tgec->f_Exception     = p_FmMacParam->f_Exception;
    p_Tgec->f_Event         = p_FmMacParam->f_Event;
    p_Tgec->h_App           = p_FmMacParam->h_App;

    return p_Tgec;
}