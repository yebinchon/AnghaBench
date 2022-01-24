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
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  t_List ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_10__ {scalar_t__ numOfKeys; scalar_t__ userSizeOfExtraction; scalar_t__ h_FmPcd; scalar_t__ maxNumOfKeys; } ;
typedef  TYPE_1__ t_FmPcdCcNode ;
struct TYPE_11__ {int /*<<< orphan*/  p_Mask; int /*<<< orphan*/  p_Key; } ;
typedef  TYPE_2__ t_FmPcdCcKeyParams ;
struct TYPE_12__ {int /*<<< orphan*/  shadowLock; int /*<<< orphan*/  h_ShadowSpinlock; } ;
typedef  TYPE_3__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,TYPE_1__*,scalar_t__,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_ALREADY_EXISTS ; 
 int /*<<< orphan*/  E_BUSY ; 
 scalar_t__ E_FULL ; 
 scalar_t__ E_INVALID_STATE ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_NOT_FOUND ; 
 scalar_t__ E_NOT_IN_RANGE ; 
 scalar_t__ E_OK ; 
 int FALSE ; 
 scalar_t__ FM_PCD_MAX_NUM_OF_KEYS ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_MODIFY_STATE_ADD ; 

t_Error FUNC13(t_Handle h_FmPcd, t_Handle h_FmPcdCcNode,
                      uint16_t keyIndex, uint8_t keySize,
                      t_FmPcdCcKeyParams *p_FmPcdCcKeyParams)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_FmPcdCcNode;
    t_FmPcd *p_FmPcd;
    t_FmPcdModifyCcKeyAdditionalParams *p_ModifyKeyParams;
    t_List h_OldPointersLst, h_NewPointersLst;
    bool useShadowStructs = FALSE;
    uint16_t tmpKeyIndex;
    t_Error err = E_OK;

    if (keyIndex > p_CcNode->numOfKeys)
        FUNC8(MAJOR, E_NOT_IN_RANGE,
                     ("keyIndex > previously cleared last index + 1"));

    if (keySize != p_CcNode->userSizeOfExtraction)
        FUNC8(
                MAJOR,
                E_INVALID_VALUE,
                ("keySize has to be defined as it was defined in initialization step"));

    if (p_CcNode->h_FmPcd != h_FmPcd)
        FUNC8(
                MAJOR,
                E_INVALID_VALUE,
                ("handler to FmPcd is different from the handle provided at node initialization time"));

    if (p_CcNode->maxNumOfKeys)
    {
        if (p_CcNode->numOfKeys == p_CcNode->maxNumOfKeys)
            FUNC8(
                    MAJOR,
                    E_FULL,
                    ("number of keys exceeds the maximal number of keys provided at node initialization time"));
    }
    else
        if (p_CcNode->numOfKeys == FM_PCD_MAX_NUM_OF_KEYS)
            FUNC8(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("number of keys can not be larger than %d", FM_PCD_MAX_NUM_OF_KEYS));

    err = FUNC3(h_FmPcdCcNode, keySize, p_FmPcdCcKeyParams->p_Key,
                       p_FmPcdCcKeyParams->p_Mask, &tmpKeyIndex);
    if (FUNC4(err) != E_NOT_FOUND)
        FUNC8(
                MAJOR,
                E_ALREADY_EXISTS,
                ("The received key and mask pair was already found in the match table of the provided node"));

    p_FmPcd = (t_FmPcd *)p_CcNode->h_FmPcd;

    FUNC5(&h_OldPointersLst);
    FUNC5(&h_NewPointersLst);

    p_ModifyKeyParams = FUNC6(p_CcNode, keyIndex,
                                             e_MODIFY_STATE_ADD, TRUE, TRUE,
                                             FALSE);
    if (!p_ModifyKeyParams)
        FUNC8(MAJOR, E_INVALID_STATE, NO_MSG);

    if (p_CcNode->maxNumOfKeys)
    {
        if (!FUNC10(p_FmPcd->h_ShadowSpinlock, &p_FmPcd->shadowLock))
        {
            FUNC12(p_ModifyKeyParams);
            return FUNC2(E_BUSY);
        }

        useShadowStructs = TRUE;
    }

    err = FUNC0(h_FmPcd, p_CcNode, keyIndex,
                                                p_FmPcdCcKeyParams,
                                                p_ModifyKeyParams, TRUE);
    if (err)
    {
        FUNC9(p_ModifyKeyParams);
        FUNC12(p_ModifyKeyParams);
        if (p_CcNode->maxNumOfKeys)
            FUNC7(p_FmPcd->shadowLock);
        FUNC8(MAJOR, err, NO_MSG);
    }

    err = FUNC11(p_CcNode, p_ModifyKeyParams,
                                           &h_OldPointersLst,
                                           &h_NewPointersLst);
    if (err)
    {
        FUNC9(p_ModifyKeyParams);
        FUNC12(p_ModifyKeyParams);
        if (p_CcNode->maxNumOfKeys)
            FUNC7(p_FmPcd->shadowLock);
        FUNC8(MAJOR, err, NO_MSG);
    }

    err = FUNC1(p_FmPcd, &h_OldPointersLst, &h_NewPointersLst,
                          p_ModifyKeyParams, useShadowStructs);
    if (p_CcNode->maxNumOfKeys)
        FUNC7(p_FmPcd->shadowLock);

    return err;
}