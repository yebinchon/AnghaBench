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
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_11__ {int /*<<< orphan*/  schemeId; scalar_t__ h_FmPcd; } ;
typedef  TYPE_3__ t_FmPcdKgScheme ;
struct TYPE_12__ {TYPE_6__* p_FmPcdKg; scalar_t__ h_Hc; } ;
typedef  TYPE_4__ t_FmPcd ;
struct TYPE_13__ {TYPE_2__* p_IndirectAccessRegs; } ;
struct TYPE_9__ {int /*<<< orphan*/  kgse_spc; int /*<<< orphan*/  kgse_mode; } ;
struct TYPE_10__ {TYPE_1__ schemeRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ALREADY_EXISTS ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NOT_IN_RANGE ; 
 scalar_t__ FM_PCD_KG_NUM_OF_SCHEMES ; 
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int KG_SCH_MODE_EN ; 
 int FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  MAJOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 

uint32_t  FUNC9(t_Handle h_Scheme)
{
    t_FmPcd             *p_FmPcd;
    uint32_t            tmpKgarReg, spc, intFlags;
    uint8_t             physicalSchemeId;

    FUNC7(h_Scheme, E_INVALID_HANDLE, 0);

    p_FmPcd = (t_FmPcd*)(((t_FmPcdKgScheme *)h_Scheme)->h_FmPcd);
    if (p_FmPcd->h_Hc)
        return FUNC0(p_FmPcd->h_Hc, h_Scheme);

    physicalSchemeId = ((t_FmPcdKgScheme *)h_Scheme)->schemeId;

    if (FUNC2(p_FmPcd, physicalSchemeId) == FM_PCD_KG_NUM_OF_SCHEMES)
        FUNC6(MAJOR, E_NOT_IN_RANGE, NO_MSG);

    tmpKgarReg = FUNC1(physicalSchemeId);
    intFlags = FUNC4(p_FmPcd->p_FmPcdKg);
    FUNC8(p_FmPcd, tmpKgarReg);
    if (!(FUNC3(p_FmPcd->p_FmPcdKg->p_IndirectAccessRegs->schemeRegs.kgse_mode) & KG_SCH_MODE_EN))
       FUNC6(MAJOR, E_ALREADY_EXISTS, ("Scheme is Invalid"));
    spc = FUNC3(p_FmPcd->p_FmPcdKg->p_IndirectAccessRegs->schemeRegs.kgse_spc);
    FUNC5(p_FmPcd->p_FmPcdKg, intFlags);

    return spc;
}