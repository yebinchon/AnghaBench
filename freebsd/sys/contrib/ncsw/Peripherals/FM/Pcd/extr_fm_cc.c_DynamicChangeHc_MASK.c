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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  t_List ;
typedef  int /*<<< orphan*/ * t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_2__ {int /*<<< orphan*/  h_Hc; } ;
typedef  TYPE_1__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ILLEGAL_BASE ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static t_Error FUNC8(
        t_Handle h_FmPcd, t_List *h_OldPointersLst, t_List *h_NewPointersLst,
        t_FmPcdModifyCcKeyAdditionalParams *p_AdditionalParams,
        bool useShadowStructs)
{
    t_List *p_PosOld, *p_PosNew;
    uint32_t oldAdAddrOffset, newAdAddrOffset;
    uint16_t i = 0;
    t_Error err = E_OK;
    uint8_t numOfModifiedPtr;

    FUNC0(h_FmPcd);
    FUNC0(h_OldPointersLst);
    FUNC0(h_NewPointersLst);

    numOfModifiedPtr = (uint8_t)FUNC5(h_OldPointersLst);

    if (numOfModifiedPtr)
    {
        p_PosNew = FUNC3(h_NewPointersLst);
        p_PosOld = FUNC3(h_OldPointersLst);

        /* Retrieve address of new AD */
        newAdAddrOffset = FUNC2(h_FmPcd,
                                                               p_PosNew);
        if (newAdAddrOffset == (uint32_t)ILLEGAL_BASE)
        {
            FUNC7(h_FmPcd, h_OldPointersLst,
                                         h_NewPointersLst,
                                         p_AdditionalParams, useShadowStructs);
            FUNC6(MAJOR, E_INVALID_VALUE, ("New AD address"));
        }

        for (i = 0; i < numOfModifiedPtr; i++)
        {
            /* Retrieve address of current AD */
            oldAdAddrOffset = FUNC2(h_FmPcd,
                                                                   p_PosOld);
            if (oldAdAddrOffset == (uint32_t)ILLEGAL_BASE)
            {
                FUNC7(h_FmPcd, h_OldPointersLst,
                                             h_NewPointersLst,
                                             p_AdditionalParams,
                                             useShadowStructs);
                FUNC6(MAJOR, E_INVALID_VALUE, ("Old AD address"));
            }

            /* Invoke host command to copy from new AD to old AD */
            err = FUNC1(((t_FmPcd *)h_FmPcd)->h_Hc,
                                           oldAdAddrOffset, newAdAddrOffset);
            if (err)
            {
                FUNC7(h_FmPcd, h_OldPointersLst,
                                             h_NewPointersLst,
                                             p_AdditionalParams,
                                             useShadowStructs);
                FUNC6(
                        MAJOR,
                        err,
                        ("For part of nodes changes are done - situation is danger"));
            }

            p_PosOld = FUNC4(p_PosOld);
        }
    }
    return E_OK;
}