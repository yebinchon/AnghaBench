
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_11__ {scalar_t__ h_FmPcd; } ;
typedef TYPE_1__ t_FmPcdCcTree ;
typedef TYPE_1__ t_FmPcdCcNextEngineParams ;
typedef TYPE_1__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 int DBG (int ,char*) ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_NULL_POINTER ;
 scalar_t__ E_OK ;
 scalar_t__ FmPcdCcModifyNextEngineParamTree (TYPE_1__*,TYPE_1__*,int ,int ,TYPE_1__*) ;
 int FmPcdLockTryLockAll (TYPE_1__*) ;
 int FmPcdLockUnlockAll (TYPE_1__*) ;
 int MAJOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int TRACE ;

t_Error FM_PCD_CcRootModifyNextEngine(
        t_Handle h_CcTree, uint8_t grpId, uint8_t index,
        t_FmPcdCcNextEngineParams *p_FmPcdCcNextEngineParams)
{
    t_FmPcd *p_FmPcd;
    t_FmPcdCcTree *p_CcTree = (t_FmPcdCcTree *)h_CcTree;
    t_Error err = E_OK;

    SANITY_CHECK_RETURN_ERROR(p_FmPcdCcNextEngineParams, E_NULL_POINTER);
    SANITY_CHECK_RETURN_ERROR(p_CcTree, E_INVALID_STATE);
    p_FmPcd = (t_FmPcd *)p_CcTree->h_FmPcd;
    SANITY_CHECK_RETURN_ERROR(p_FmPcd, E_INVALID_HANDLE);

    if (!FmPcdLockTryLockAll(p_FmPcd))
    {
        DBG(TRACE, ("FmPcdLockTryLockAll failed"));
        return ERROR_CODE(E_BUSY);
    }

    err = FmPcdCcModifyNextEngineParamTree(p_FmPcd, p_CcTree, grpId, index,
                                           p_FmPcdCcNextEngineParams);
    FmPcdLockUnlockAll(p_FmPcd);

    if (err)
    {
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    return E_OK;
}
