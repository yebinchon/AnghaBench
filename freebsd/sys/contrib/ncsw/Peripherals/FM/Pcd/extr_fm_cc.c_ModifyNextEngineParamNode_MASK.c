#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  t_List ;
typedef  TYPE_1__* t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_11__ {scalar_t__ numOfKeys; scalar_t__ maxNumOfKeys; scalar_t__ h_FmPcd; } ;
typedef  TYPE_1__ t_FmPcdCcNode ;
typedef  int /*<<< orphan*/  t_FmPcdCcNextEngineParams ;
struct TYPE_12__ {int /*<<< orphan*/  shadowLock; int /*<<< orphan*/  h_ShadowSpinlock; } ;
typedef  TYPE_3__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_STATE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_MODIFY_STATE_CHANGE ; 

__attribute__((used)) static t_Error FUNC10(
        t_Handle h_FmPcd, t_Handle h_FmPcdCcNode, uint16_t keyIndex,
        t_FmPcdCcNextEngineParams *p_FmPcdCcNextEngineParams)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_FmPcdCcNode;
    t_FmPcd *p_FmPcd;
    t_List h_OldPointersLst, h_NewPointersLst;
    t_FmPcdModifyCcKeyAdditionalParams *p_ModifyKeyParams;
    t_Error err = E_OK;

    FUNC7(h_FmPcd, E_INVALID_VALUE);
    FUNC7(p_CcNode, E_INVALID_HANDLE);

    if (keyIndex >= p_CcNode->numOfKeys)
        FUNC6(MAJOR, E_INVALID_STATE,
                     ("keyIndex > previously cleared last index + 1"));

    p_FmPcd = (t_FmPcd *)p_CcNode->h_FmPcd;

    FUNC3(&h_OldPointersLst);
    FUNC3(&h_NewPointersLst);

    p_ModifyKeyParams = FUNC4(p_CcNode, keyIndex,
                                             e_MODIFY_STATE_CHANGE, FALSE,
                                             FALSE, FALSE);
    if (!p_ModifyKeyParams)
        FUNC6(MAJOR, E_INVALID_STATE, NO_MSG);

    if (p_CcNode->maxNumOfKeys
            && !FUNC8(p_FmPcd->h_ShadowSpinlock, &p_FmPcd->shadowLock))
    {
        FUNC9(p_ModifyKeyParams);
        return FUNC2(E_BUSY);
    }

    err = FUNC0(h_FmPcd, p_CcNode, keyIndex,
                                       p_FmPcdCcNextEngineParams,
                                       &h_OldPointersLst, &h_NewPointersLst,
                                       p_ModifyKeyParams);
    if (err)
    {
        FUNC9(p_ModifyKeyParams);
        if (p_CcNode->maxNumOfKeys)
            FUNC5(p_FmPcd->shadowLock);
        FUNC6(MAJOR, err, NO_MSG);
    }

    err = FUNC1(p_FmPcd, &h_OldPointersLst, &h_NewPointersLst,
                          p_ModifyKeyParams, FALSE);

    if (p_CcNode->maxNumOfKeys)
        FUNC5(p_FmPcd->shadowLock);

    return err;
}