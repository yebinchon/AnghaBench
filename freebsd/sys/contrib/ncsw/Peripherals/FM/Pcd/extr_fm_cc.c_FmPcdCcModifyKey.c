
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int t_List ;
typedef scalar_t__ t_Handle ;
typedef int t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_7__ {scalar_t__ numOfKeys; scalar_t__ userSizeOfExtraction; scalar_t__ h_FmPcd; scalar_t__ maxNumOfKeys; } ;
typedef TYPE_1__ t_FmPcdCcNode ;
struct TYPE_8__ {int shadowLock; int h_ShadowSpinlock; } ;
typedef TYPE_2__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 scalar_t__ BuildNewNodeModifyKey (TYPE_1__*,scalar_t__,scalar_t__*,scalar_t__*,int *) ;
 scalar_t__ DoDynamicChange (TYPE_2__*,int *,int *,int *,int) ;
 scalar_t__ ERROR_CODE (int ) ;
 scalar_t__ E_ALREADY_EXISTS ;
 int E_BUSY ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_NOT_FOUND ;
 scalar_t__ E_OK ;
 int FALSE ;
 scalar_t__ FindKeyIndex (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ GET_ERROR_TYPE (scalar_t__) ;
 int INIT_LIST (int *) ;
 int MAJOR ;
 int MINOR ;
 int * ModifyNodeCommonPart (TYPE_1__*,scalar_t__,int ,int,int,int) ;
 char* NO_MSG ;
 int RELEASE_LOCK (int ) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int ReleaseNewNodeCommonPart (int *) ;
 int TRUE ;
 int TRY_LOCK (int ,int *) ;
 scalar_t__ UpdatePtrWhichPointOnCrntMdfNode (TYPE_1__*,int *,int *,int *) ;
 int XX_Free (int *) ;
 int e_MODIFY_STATE_CHANGE ;

t_Error FmPcdCcModifyKey(t_Handle h_FmPcd, t_Handle h_FmPcdCcNode,
                         uint16_t keyIndex, uint8_t keySize, uint8_t *p_Key,
                         uint8_t *p_Mask)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_FmPcdCcNode;
    t_FmPcd *p_FmPcd;
    t_List h_OldPointersLst, h_NewPointersLst;
    t_FmPcdModifyCcKeyAdditionalParams *p_ModifyKeyParams;
    uint16_t tmpKeyIndex;
    bool useShadowStructs = FALSE;
    t_Error err = E_OK;

    if (keyIndex >= p_CcNode->numOfKeys)
        RETURN_ERROR(MAJOR, E_INVALID_STATE,
                     ("keyIndex > previously cleared last index + 1"));

    if (keySize != p_CcNode->userSizeOfExtraction)
        RETURN_ERROR(
                MAJOR,
                E_INVALID_VALUE,
                ("size for ModifyKey has to be the same as defined in SetNode"));

    if (p_CcNode->h_FmPcd != h_FmPcd)
        RETURN_ERROR(
                MAJOR,
                E_INVALID_VALUE,
                ("handler to FmPcd is different from the handle provided at node initialization time"));

    err = FindKeyIndex(h_FmPcdCcNode, keySize, p_Key, p_Mask, &tmpKeyIndex);
    if (GET_ERROR_TYPE(err) != E_NOT_FOUND)
        RETURN_ERROR(
                MINOR,
                E_ALREADY_EXISTS,
                ("The received key and mask pair was already found in the match table of the provided node"));

    p_FmPcd = (t_FmPcd *)p_CcNode->h_FmPcd;

    INIT_LIST(&h_OldPointersLst);
    INIT_LIST(&h_NewPointersLst);

    p_ModifyKeyParams = ModifyNodeCommonPart(p_CcNode, keyIndex,
                                             e_MODIFY_STATE_CHANGE, TRUE, TRUE,
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

    err = BuildNewNodeModifyKey(p_CcNode, keyIndex, p_Key, p_Mask,
                                p_ModifyKeyParams);
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
