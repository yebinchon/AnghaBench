#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  t_List ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_7__ {scalar_t__ numOfKeys; scalar_t__ h_FmPcd; scalar_t__ maxNumOfKeys; } ;
typedef  TYPE_1__ t_FmPcdCcNode ;
struct TYPE_8__ {int /*<<< orphan*/  shadowLock; int /*<<< orphan*/  h_ShadowSpinlock; } ;
typedef  TYPE_2__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 scalar_t__ E_INVALID_STATE ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_OK ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_MODIFY_STATE_REMOVE ; 

t_Error FUNC11(t_Handle h_FmPcd, t_Handle h_FmPcdCcNode,
                         uint16_t keyIndex)
{

    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_FmPcdCcNode;
    t_FmPcd *p_FmPcd;
    t_FmPcdModifyCcKeyAdditionalParams *p_ModifyKeyParams;
    t_List h_OldPointersLst, h_NewPointersLst;
    bool useShadowStructs = FALSE;
    t_Error err = E_OK;

    if (keyIndex >= p_CcNode->numOfKeys)
        FUNC6(MAJOR, E_INVALID_VALUE,
                     ("impossible to remove key when numOfKeys <= keyIndex"));

    if (p_CcNode->h_FmPcd != h_FmPcd)
        FUNC6(
                MAJOR,
                E_INVALID_VALUE,
                ("handler to FmPcd is different from the handle provided at node initialization time"));

    p_FmPcd = (t_FmPcd *)p_CcNode->h_FmPcd;

    FUNC3(&h_OldPointersLst);
    FUNC3(&h_NewPointersLst);

    p_ModifyKeyParams = FUNC4(p_CcNode, keyIndex,
                                             e_MODIFY_STATE_REMOVE, TRUE, TRUE,
                                             FALSE);
    if (!p_ModifyKeyParams)
        FUNC6(MAJOR, E_INVALID_STATE, NO_MSG);

    if (p_CcNode->maxNumOfKeys)
    {
        if (!FUNC8(p_FmPcd->h_ShadowSpinlock, &p_FmPcd->shadowLock))
        {
            FUNC10(p_ModifyKeyParams);
            return FUNC2(E_BUSY);
        }

        useShadowStructs = TRUE;
    }

    err = FUNC0(p_CcNode, keyIndex, p_ModifyKeyParams);
    if (err)
    {
        FUNC10(p_ModifyKeyParams);
        if (p_CcNode->maxNumOfKeys)
            FUNC5(p_FmPcd->shadowLock);
        FUNC6(MAJOR, err, NO_MSG);
    }

    err = FUNC9(p_CcNode, p_ModifyKeyParams,
                                           &h_OldPointersLst,
                                           &h_NewPointersLst);
    if (err)
    {
        FUNC7(p_ModifyKeyParams);
        FUNC10(p_ModifyKeyParams);
        if (p_CcNode->maxNumOfKeys)
            FUNC5(p_FmPcd->shadowLock);
        FUNC6(MAJOR, err, NO_MSG);
    }

    err = FUNC1(p_FmPcd, &h_OldPointersLst, &h_NewPointersLst,
                          p_ModifyKeyParams, useShadowStructs);

    if (p_CcNode->maxNumOfKeys)
        FUNC5(p_FmPcd->shadowLock);

    return err;
}