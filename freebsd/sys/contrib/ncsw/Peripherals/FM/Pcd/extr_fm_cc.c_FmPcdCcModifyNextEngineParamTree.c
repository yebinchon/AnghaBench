
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int t_List ;
typedef int t_Handle ;
struct TYPE_14__ {int tree; } ;
typedef TYPE_2__ t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_15__ {int numOfGrps; TYPE_1__* fmPcdGroupParam; } ;
typedef TYPE_3__ t_FmPcdCcTree ;
typedef int t_FmPcdCcNextEngineParams ;
struct TYPE_16__ {int shadowLock; scalar_t__ p_CcShadow; int h_ShadowSpinlock; } ;
typedef TYPE_4__ t_FmPcd ;
typedef scalar_t__ t_Error ;
struct TYPE_13__ {int numOfEntriesInGroup; int baseGroupEntry; } ;


 scalar_t__ BuildNewNodeModifyNextEngine (TYPE_4__*,TYPE_3__*,scalar_t__,int *,int *,int *,TYPE_2__*) ;
 scalar_t__ DoDynamicChange (TYPE_4__*,int *,int *,TYPE_2__*,int ) ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_BUSY ;
 scalar_t__ E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 int FALSE ;
 int INIT_LIST (int *) ;
 int MAJOR ;
 TYPE_2__* ModifyNodeCommonPart (TYPE_3__*,scalar_t__,int ,int ,int ,int ) ;
 char* NO_MSG ;
 int RELEASE_LOCK (int ) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int,scalar_t__) ;
 int TRUE ;
 int TRY_LOCK (int ,int *) ;
 int XX_Free (TYPE_2__*) ;
 int e_MODIFY_STATE_CHANGE ;

t_Error FmPcdCcModifyNextEngineParamTree(
        t_Handle h_FmPcd, t_Handle h_FmPcdCcTree, uint8_t grpId, uint8_t index,
        t_FmPcdCcNextEngineParams *p_FmPcdCcNextEngineParams)
{
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmPcdCcTree;
    t_FmPcd *p_FmPcd;
    t_List h_OldPointersLst, h_NewPointersLst;
    uint16_t keyIndex;
    t_FmPcdModifyCcKeyAdditionalParams *p_ModifyKeyParams;
    t_Error err = E_OK;

    SANITY_CHECK_RETURN_ERROR(h_FmPcd, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(h_FmPcdCcTree, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR((grpId <= 7), E_INVALID_VALUE);

    if (grpId >= p_FmPcdCcTree->numOfGrps)
        RETURN_ERROR(MAJOR, E_INVALID_HANDLE,
                     ("grpId you asked > numOfGroup of relevant tree"));

    if (index >= p_FmPcdCcTree->fmPcdGroupParam[grpId].numOfEntriesInGroup)
        RETURN_ERROR(MAJOR, E_INVALID_HANDLE, ("index > numOfEntriesInGroup"));

    p_FmPcd = (t_FmPcd *)h_FmPcd;

    INIT_LIST(&h_OldPointersLst);
    INIT_LIST(&h_NewPointersLst);

    keyIndex = (uint16_t)(p_FmPcdCcTree->fmPcdGroupParam[grpId].baseGroupEntry
            + index);

    p_ModifyKeyParams = ModifyNodeCommonPart(p_FmPcdCcTree, keyIndex,
                                             e_MODIFY_STATE_CHANGE, FALSE,
                                             FALSE, TRUE);
    if (!p_ModifyKeyParams)
        RETURN_ERROR(MAJOR, E_INVALID_STATE, NO_MSG);

    p_ModifyKeyParams->tree = TRUE;

    if (p_FmPcd->p_CcShadow
            && !TRY_LOCK(p_FmPcd->h_ShadowSpinlock, &p_FmPcd->shadowLock))
    {
        XX_Free(p_ModifyKeyParams);
        return ERROR_CODE(E_BUSY);
    }

    err = BuildNewNodeModifyNextEngine(p_FmPcd, p_FmPcdCcTree, keyIndex,
                                       p_FmPcdCcNextEngineParams,
                                       &h_OldPointersLst, &h_NewPointersLst,
                                       p_ModifyKeyParams);
    if (err)
    {
        XX_Free(p_ModifyKeyParams);
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    err = DoDynamicChange(p_FmPcd, &h_OldPointersLst, &h_NewPointersLst,
                          p_ModifyKeyParams, FALSE);

    if (p_FmPcd->p_CcShadow)
        RELEASE_LOCK(p_FmPcd->shadowLock);

    return err;

}
