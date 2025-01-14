
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_12__ {scalar_t__ h_Manip; int nextEngine; } ;
typedef TYPE_2__ t_NetEnvParams ;
typedef scalar_t__ t_Handle ;
struct TYPE_13__ {int numOfEntries; scalar_t__ h_CapwapReassemblyManip; int numOfGrps; TYPE_1__* fmPcdGroupParam; int ccTreeBaseAddr; } ;
typedef TYPE_3__ t_FmPcdCcTree ;
typedef TYPE_2__ t_FmPcdCcNextEngineParams ;
typedef scalar_t__ t_Error ;
struct TYPE_11__ {int baseGroupEntry; } ;


 int ASSERT_COND (TYPE_3__*) ;
 int CcRootReleaseLock (TYPE_3__*) ;
 scalar_t__ CcRootTryLock (TYPE_3__*) ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_BUSY ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_MAX_NUM_OF_CC_GROUPS ;
 scalar_t__ FmPcdManipBuildCapwapReassmScheme (scalar_t__,scalar_t__,TYPE_3__*,scalar_t__,size_t) ;
 int MAJOR ;
 char* NO_MSG ;
 int NextStepAd (int ,int *,TYPE_2__*,scalar_t__) ;
 int PTR_MOVE (scalar_t__,int) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ UINT_TO_PTR (int ) ;
 int e_FM_PCD_DONE ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmPcdCcTreeAddCPR(t_Handle h_FmPcd, t_Handle h_FmTree,
                          t_Handle h_NetEnv, t_Handle h_ReassemblyManip,
                          bool createSchemes)
{
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmTree;
    t_FmPcdCcNextEngineParams nextEngineParams;
    t_NetEnvParams netEnvParams;
    t_Handle h_Ad;
    uint8_t groupId;
    t_Error err;

    ASSERT_COND(p_FmPcdCcTree);


    memset(&nextEngineParams, 0, sizeof(t_FmPcdCcNextEngineParams));
    memset(&netEnvParams, 0, sizeof(t_NetEnvParams));

    h_Ad = UINT_TO_PTR(p_FmPcdCcTree->ccTreeBaseAddr);

    if (p_FmPcdCcTree->numOfEntries > (FM_PCD_MAX_NUM_OF_CC_GROUPS - 1))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("need one free entries for CPR"));

    nextEngineParams.nextEngine = e_FM_PCD_DONE;
    nextEngineParams.h_Manip = h_ReassemblyManip;


    err = CcRootTryLock(p_FmPcdCcTree);
    if (err)
        return ERROR_CODE(E_BUSY);

    if (p_FmPcdCcTree->h_CapwapReassemblyManip == h_ReassemblyManip)
    {
        CcRootReleaseLock(p_FmPcdCcTree);
        return E_OK;
    }

    if ((p_FmPcdCcTree->h_CapwapReassemblyManip)
            && (p_FmPcdCcTree->h_CapwapReassemblyManip != h_ReassemblyManip))
    {
        CcRootReleaseLock(p_FmPcdCcTree);
        RETURN_ERROR(MAJOR, E_INVALID_STATE,
                     ("This tree was previously updated with different CPR"));
    }

    groupId = p_FmPcdCcTree->numOfGrps++;
    p_FmPcdCcTree->fmPcdGroupParam[groupId].baseGroupEntry =
            (FM_PCD_MAX_NUM_OF_CC_GROUPS - 1);

    if (createSchemes)
    {
        err = FmPcdManipBuildCapwapReassmScheme(h_FmPcd, h_NetEnv,
                                                p_FmPcdCcTree,
                                                h_ReassemblyManip, groupId);
        if (err)
        {
            p_FmPcdCcTree->numOfGrps--;
            CcRootReleaseLock(p_FmPcdCcTree);
            RETURN_ERROR(MAJOR, err, NO_MSG);
        }
    }

    NextStepAd(
            PTR_MOVE(h_Ad, (FM_PCD_MAX_NUM_OF_CC_GROUPS-1) * FM_PCD_CC_AD_ENTRY_SIZE),
            ((void*)0), &nextEngineParams, h_FmPcd);

    p_FmPcdCcTree->h_CapwapReassemblyManip = h_ReassemblyManip;

    CcRootReleaseLock(p_FmPcdCcTree);

    return E_OK;
}
