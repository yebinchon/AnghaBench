
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int t_List ;
typedef scalar_t__ t_Handle ;
typedef int t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_7__ {scalar_t__ numOfKeys; scalar_t__ h_FmPcd; scalar_t__ maxNumOfKeys; } ;
typedef TYPE_1__ t_FmPcdCcNode ;
struct TYPE_8__ {int shadowLock; int h_ShadowSpinlock; } ;
typedef TYPE_2__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 scalar_t__ BuildNewNodeRemoveKey (TYPE_1__*,scalar_t__,int *) ;
 scalar_t__ DoDynamicChange (TYPE_2__*,int *,int *,int *,int) ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_BUSY ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 int FALSE ;
 int INIT_LIST (int *) ;
 int MAJOR ;
 int * ModifyNodeCommonPart (TYPE_1__*,scalar_t__,int ,int,int,int) ;
 char* NO_MSG ;
 int RELEASE_LOCK (int ) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int ReleaseNewNodeCommonPart (int *) ;
 int TRUE ;
 int TRY_LOCK (int ,int *) ;
 scalar_t__ UpdatePtrWhichPointOnCrntMdfNode (TYPE_1__*,int *,int *,int *) ;
 int XX_Free (int *) ;
 int e_MODIFY_STATE_REMOVE ;

t_Error FmPcdCcRemoveKey(t_Handle h_FmPcd, t_Handle h_FmPcdCcNode,
                         uint16_t keyIndex)
{

    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_FmPcdCcNode;
    t_FmPcd *p_FmPcd;
    t_FmPcdModifyCcKeyAdditionalParams *p_ModifyKeyParams;
    t_List h_OldPointersLst, h_NewPointersLst;
    bool useShadowStructs = FALSE;
    t_Error err = E_OK;

    if (keyIndex >= p_CcNode->numOfKeys)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("impossible to remove key when numOfKeys <= keyIndex"));

    if (p_CcNode->h_FmPcd != h_FmPcd)
        RETURN_ERROR(
                MAJOR,
                E_INVALID_VALUE,
                ("handler to FmPcd is different from the handle provided at node initialization time"));

    p_FmPcd = (t_FmPcd *)p_CcNode->h_FmPcd;

    INIT_LIST(&h_OldPointersLst);
    INIT_LIST(&h_NewPointersLst);

    p_ModifyKeyParams = ModifyNodeCommonPart(p_CcNode, keyIndex,
                                             e_MODIFY_STATE_REMOVE, TRUE, TRUE,
                                             FALSE);
    if (!p_ModifyKeyParams)
        RETURN_ERROR(MAJOR, E_INVALID_STATE, NO_MSG);

    if (p_CcNode->maxNumOfKeys)
    {
        if (!TRY_LOCK(p_FmPcd->h_ShadowSpinlock, &p_FmPcd->shadowLock))
        {
            XX_Free(p_ModifyKeyParams);
            return ERROR_CODE(E_BUSY);
        }

        useShadowStructs = TRUE;
    }

    err = BuildNewNodeRemoveKey(p_CcNode, keyIndex, p_ModifyKeyParams);
    if (err)
    {
        XX_Free(p_ModifyKeyParams);
        if (p_CcNode->maxNumOfKeys)
            RELEASE_LOCK(p_FmPcd->shadowLock);
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    err = UpdatePtrWhichPointOnCrntMdfNode(p_CcNode, p_ModifyKeyParams,
                                           &h_OldPointersLst,
                                           &h_NewPointersLst);
    if (err)
    {
        ReleaseNewNodeCommonPart(p_ModifyKeyParams);
        XX_Free(p_ModifyKeyParams);
        if (p_CcNode->maxNumOfKeys)
            RELEASE_LOCK(p_FmPcd->shadowLock);
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    err = DoDynamicChange(p_FmPcd, &h_OldPointersLst, &h_NewPointersLst,
                          p_ModifyKeyParams, useShadowStructs);

    if (p_CcNode->maxNumOfKeys)
        RELEASE_LOCK(p_FmPcd->shadowLock);

    return err;
}
