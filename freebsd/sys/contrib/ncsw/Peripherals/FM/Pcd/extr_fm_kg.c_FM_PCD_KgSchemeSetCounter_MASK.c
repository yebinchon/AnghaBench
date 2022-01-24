#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_11__ {int /*<<< orphan*/  schemeId; scalar_t__ h_FmPcd; } ;
typedef  TYPE_3__ t_FmPcdKgScheme ;
struct TYPE_12__ {TYPE_6__* p_FmPcdKg; scalar_t__ h_Hc; } ;
typedef  TYPE_4__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_13__ {TYPE_2__* p_IndirectAccessRegs; } ;
struct TYPE_9__ {int /*<<< orphan*/  kgse_spc; int /*<<< orphan*/  kgse_mode; } ;
struct TYPE_10__ {TYPE_1__ schemeRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ALREADY_EXISTS ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_NOT_IN_RANGE ; 
 int /*<<< orphan*/  E_OK ; 
 scalar_t__ FM_PCD_KG_NUM_OF_SCHEMES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int KG_SCH_MODE_EN ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 

t_Error  FUNC13(t_Handle h_Scheme, uint32_t value)
{
    t_FmPcd             *p_FmPcd;
    uint32_t            tmpKgarReg, intFlags;
    uint8_t             physicalSchemeId;

    FUNC10(h_Scheme, E_INVALID_HANDLE, 0);

    p_FmPcd = (t_FmPcd*)(((t_FmPcdKgScheme *)h_Scheme)->h_FmPcd);

    if (!FUNC4(h_Scheme))
        FUNC9(MAJOR, E_INVALID_STATE, ("Requested scheme is invalid."));

    if (p_FmPcd->h_Hc)
        return FUNC0(p_FmPcd->h_Hc, h_Scheme, value);

    physicalSchemeId = ((t_FmPcdKgScheme *)h_Scheme)->schemeId;
    /* check that schemeId is in range */
    if (FUNC3(p_FmPcd, physicalSchemeId) == FM_PCD_KG_NUM_OF_SCHEMES)
        FUNC8(MAJOR, E_NOT_IN_RANGE, NO_MSG);

    /* read specified scheme into scheme registers */
    tmpKgarReg = FUNC1(physicalSchemeId);
    intFlags = FUNC6(p_FmPcd->p_FmPcdKg);
    FUNC12(p_FmPcd, tmpKgarReg);
    if (!(FUNC5(p_FmPcd->p_FmPcdKg->p_IndirectAccessRegs->schemeRegs.kgse_mode) & KG_SCH_MODE_EN))
    {
       FUNC7(p_FmPcd->p_FmPcdKg, intFlags);
       FUNC9(MAJOR, E_ALREADY_EXISTS, ("Scheme is Invalid"));
    }

    /* change counter value */
    FUNC11(p_FmPcd->p_FmPcdKg->p_IndirectAccessRegs->schemeRegs.kgse_spc, value);

    /* call indirect command for scheme write */
    tmpKgarReg = FUNC2(physicalSchemeId, TRUE);

    FUNC12(p_FmPcd, tmpKgarReg);
    FUNC7(p_FmPcd->p_FmPcdKg, intFlags);

    return E_OK;
}