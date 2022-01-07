
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_58__ TYPE_9__ ;
typedef struct TYPE_57__ TYPE_8__ ;
typedef struct TYPE_56__ TYPE_7__ ;
typedef struct TYPE_55__ TYPE_6__ ;
typedef struct TYPE_54__ TYPE_5__ ;
typedef struct TYPE_53__ TYPE_4__ ;
typedef struct TYPE_52__ TYPE_3__ ;
typedef struct TYPE_51__ TYPE_2__ ;
typedef struct TYPE_50__ TYPE_1__ ;
typedef struct TYPE_49__ TYPE_18__ ;
typedef struct TYPE_48__ TYPE_15__ ;
typedef struct TYPE_47__ TYPE_13__ ;
typedef struct TYPE_46__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_58__ {int numOfDistinctionUnits; int vector; TYPE_18__* unitIds; int netEnvId; } ;
typedef TYPE_9__ t_NetEnvParams ;
typedef TYPE_10__* t_Handle ;
struct TYPE_55__ {scalar_t__ h_CcNode; } ;
struct TYPE_56__ {TYPE_6__ ccParams; } ;
struct TYPE_57__ {scalar_t__ nextEngine; TYPE_7__ params; } ;
struct TYPE_53__ {int h_CcNode; } ;
struct TYPE_54__ {TYPE_4__ ccParams; } ;
struct TYPE_49__ {scalar_t__ nextEngine; scalar_t__ requiredAction; TYPE_8__ nextEngineParams; TYPE_5__ params; scalar_t__ h_Manip; } ;
struct TYPE_50__ {scalar_t__ h_CcNode; } ;
struct TYPE_51__ {TYPE_1__ ccParams; } ;
struct TYPE_46__ {int numOfGrps; scalar_t__ nextEngine; int numOfEntries; int index; int p_Lock; TYPE_18__* keyAndNextEngineParams; int ccTreeBaseAddr; int netEnvId; struct TYPE_46__* h_CcNode; TYPE_18__ nextEngineParams; int requiredAction; scalar_t__ h_Manip; TYPE_3__* fmPcdGroupParam; TYPE_15__* ccGrpParams; int h_NetEnv; TYPE_2__ params; int fmPortsLst; struct TYPE_46__* h_FmPcd; } ;
typedef TYPE_10__ t_FmPcdCcTreeParams ;
typedef TYPE_10__ t_FmPcdCcTree ;
struct TYPE_47__ {int h_Spinlock; int ccTreeIdLst; } ;
typedef TYPE_13__ t_FmPcdCcNode ;
typedef int t_FmPcdCcNextEngineParams ;
typedef TYPE_10__ t_FmPcdCcKeyAndNextEngineParams ;
struct TYPE_48__ {scalar_t__ numOfDistinctionUnits; TYPE_10__* nextEnginePerEntriesInGrp; TYPE_10__ unitIds; } ;
typedef TYPE_15__ t_FmPcdCcGrpParams ;
typedef int t_FmPcd ;
typedef scalar_t__ t_Error ;
typedef TYPE_10__ t_CcNodeInformation ;
struct TYPE_52__ {int baseGroupEntry; int numOfEntriesInGroup; int totalBitsMask; } ;


 scalar_t__ AllocAndFillAdForContLookupManip (int ) ;
 int DBG (int ,char*) ;
 int DeleteTree (TYPE_10__*,int *) ;
 scalar_t__ E_CONFLICT ;
 int E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 int EnqueueNodeInfoToRelevantLst (int *,TYPE_10__*,int ) ;
 int FM_MURAM_AllocMem (int ,int ,int ) ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_TREE_ADDR_ALIGN ;
 int FM_PCD_CcRootDelete (TYPE_10__*) ;
 int FM_PCD_MAX_NUM_OF_CC_GROUPS ;
 int FM_PCD_MAX_NUM_OF_CC_UNITS ;
 TYPE_10__* FindNodeInfoInReleventLst (int *,TYPE_10__*,int ) ;
 int FmPcdAcquireLock (int *) ;
 int FmPcdGetMuramHandle (TYPE_10__*) ;
 int FmPcdGetNetEnvId (int ) ;
 int FmPcdIncNetEnvOwners (TYPE_10__*,int ) ;
 int FmPcdLockTryLockAll (int *) ;
 int FmPcdLockUnlockAll (int *) ;
 scalar_t__ FmPcdManipApplSpecificBuild () ;
 scalar_t__ FmPcdManipCheckParamsForCcNextEngine (TYPE_10__*,int *) ;
 int INIT_LIST (int *) ;
 scalar_t__ IsCapwapApplSpecific (scalar_t__) ;
 int MAJOR ;
 int MemSet8 (TYPE_10__*,int ,int ) ;
 char* NO_MSG ;
 int NextStepAd (TYPE_10__*,int *,TYPE_18__*,int *) ;
 TYPE_10__* PTR_MOVE (TYPE_10__*,int) ;
 int PTR_TO_UINT (int ) ;
 scalar_t__ PcdGetUnitsVector (int *,TYPE_9__*) ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_10__*,int ,int *) ;
 scalar_t__ SetRequiredAction (TYPE_10__*,scalar_t__,TYPE_18__*,TYPE_10__*,int,TYPE_10__*) ;
 int TRACE ;
 TYPE_10__* UINT_TO_PTR (int ) ;
 int UPDATE_CC_WITH_TREE ;
 scalar_t__ ValidateNextEngineParams (TYPE_10__*,TYPE_10__*,int ) ;
 int XX_Free (TYPE_10__*) ;
 scalar_t__ XX_Malloc (int) ;
 scalar_t__ e_FM_PCD_CC ;
 int e_FM_PCD_CC_STATS_MODE_NONE ;
 int memcpy (TYPE_18__*,TYPE_10__*,int) ;
 int memset (TYPE_10__*,int ,int) ;

t_Handle FM_PCD_CcRootBuild(t_Handle h_FmPcd,
                            t_FmPcdCcTreeParams *p_PcdGroupsParam)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    t_Error err = E_OK;
    int i = 0, j = 0, k = 0;
    t_FmPcdCcTree *p_FmPcdCcTree;
    uint8_t numOfEntries;
    t_Handle p_CcTreeTmp;
    t_FmPcdCcGrpParams *p_FmPcdCcGroupParams;
    t_FmPcdCcKeyAndNextEngineParams *p_Params, *p_KeyAndNextEngineParams;
    t_NetEnvParams netEnvParams;
    uint8_t lastOne = 0;
    uint32_t requiredAction = 0;
    t_FmPcdCcNode *p_FmPcdCcNextNode;
    t_CcNodeInformation ccNodeInfo, *p_CcInformation;

    SANITY_CHECK_RETURN_VALUE(h_FmPcd, E_INVALID_HANDLE, ((void*)0));
    SANITY_CHECK_RETURN_VALUE(p_PcdGroupsParam, E_INVALID_HANDLE, ((void*)0));

    if (p_PcdGroupsParam->numOfGrps > FM_PCD_MAX_NUM_OF_CC_GROUPS)
    {
        REPORT_ERROR(MAJOR, E_INVALID_VALUE, ("numOfGrps should not exceed %d", FM_PCD_MAX_NUM_OF_CC_GROUPS));
        return ((void*)0);
    }

    p_FmPcdCcTree = (t_FmPcdCcTree*)XX_Malloc(sizeof(t_FmPcdCcTree));
    if (!p_FmPcdCcTree)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("PCD tree structure"));
        return ((void*)0);
    }
    memset(p_FmPcdCcTree, 0, sizeof(t_FmPcdCcTree));
    p_FmPcdCcTree->h_FmPcd = h_FmPcd;

    p_Params = (t_FmPcdCcKeyAndNextEngineParams*)XX_Malloc(
            FM_PCD_MAX_NUM_OF_CC_GROUPS
                    * sizeof(t_FmPcdCcKeyAndNextEngineParams));
    memset(p_Params,
           0,
           FM_PCD_MAX_NUM_OF_CC_GROUPS
                   * sizeof(t_FmPcdCcKeyAndNextEngineParams));

    INIT_LIST(&p_FmPcdCcTree->fmPortsLst);
    numOfEntries = 0;
    p_FmPcdCcTree->netEnvId = FmPcdGetNetEnvId(p_PcdGroupsParam->h_NetEnv);

    for (i = 0; i < p_PcdGroupsParam->numOfGrps; i++)
    {
        p_FmPcdCcGroupParams = &p_PcdGroupsParam->ccGrpParams[i];

        if (p_FmPcdCcGroupParams->numOfDistinctionUnits
                > FM_PCD_MAX_NUM_OF_CC_UNITS)
        {
            DeleteTree(p_FmPcdCcTree, p_FmPcd);
            XX_Free(p_Params);
            REPORT_ERROR(MAJOR, E_INVALID_VALUE,
                    ("numOfDistinctionUnits (group %d) should not exceed %d", i, FM_PCD_MAX_NUM_OF_CC_UNITS));
            return ((void*)0);
        }

        p_FmPcdCcTree->fmPcdGroupParam[i].baseGroupEntry = numOfEntries;
        p_FmPcdCcTree->fmPcdGroupParam[i].numOfEntriesInGroup = (uint8_t)(0x01
                << p_FmPcdCcGroupParams->numOfDistinctionUnits);
        numOfEntries += p_FmPcdCcTree->fmPcdGroupParam[i].numOfEntriesInGroup;
        if (numOfEntries > FM_PCD_MAX_NUM_OF_CC_GROUPS)
        {
            DeleteTree(p_FmPcdCcTree, p_FmPcd);
            XX_Free(p_Params);
            REPORT_ERROR(MAJOR, E_INVALID_VALUE, ("numOfEntries can not be larger than %d", FM_PCD_MAX_NUM_OF_CC_GROUPS));
            return ((void*)0);
        }

        if (lastOne)
        {
            if (p_FmPcdCcTree->fmPcdGroupParam[i].numOfEntriesInGroup > lastOne)
            {
                DeleteTree(p_FmPcdCcTree, p_FmPcd);
                XX_Free(p_Params);
                REPORT_ERROR(MAJOR, E_CONFLICT, ("numOfEntries per group must be set in descending order"));
                return ((void*)0);
            }
        }

        lastOne = p_FmPcdCcTree->fmPcdGroupParam[i].numOfEntriesInGroup;

        netEnvParams.netEnvId = p_FmPcdCcTree->netEnvId;
        netEnvParams.numOfDistinctionUnits =
                p_FmPcdCcGroupParams->numOfDistinctionUnits;

        memcpy(netEnvParams.unitIds, &p_FmPcdCcGroupParams->unitIds,
               (sizeof(uint8_t)) * p_FmPcdCcGroupParams->numOfDistinctionUnits);

        err = PcdGetUnitsVector(p_FmPcd, &netEnvParams);
        if (err)
        {
            DeleteTree(p_FmPcdCcTree, p_FmPcd);
            XX_Free(p_Params);
            REPORT_ERROR(MAJOR, err, NO_MSG);
            return ((void*)0);
        }

        p_FmPcdCcTree->fmPcdGroupParam[i].totalBitsMask = netEnvParams.vector;
        for (j = 0; j < p_FmPcdCcTree->fmPcdGroupParam[i].numOfEntriesInGroup;
                j++)
        {
            err = ValidateNextEngineParams(
                    h_FmPcd,
                    &p_FmPcdCcGroupParams->nextEnginePerEntriesInGrp[j],
                    e_FM_PCD_CC_STATS_MODE_NONE);
            if (err)
            {
                DeleteTree(p_FmPcdCcTree, p_FmPcd);
                XX_Free(p_Params);
                REPORT_ERROR(MAJOR, err, (NO_MSG));
                return ((void*)0);
            }

            if (p_FmPcdCcGroupParams->nextEnginePerEntriesInGrp[j].h_Manip)
            {
                err = FmPcdManipCheckParamsForCcNextEngine(
                        &p_FmPcdCcGroupParams->nextEnginePerEntriesInGrp[j],
                        &requiredAction);
                if (err)
                {
                    DeleteTree(p_FmPcdCcTree, p_FmPcd);
                    XX_Free(p_Params);
                    REPORT_ERROR(MAJOR, E_INVALID_STATE, NO_MSG);
                    return ((void*)0);
                }
            }
            p_KeyAndNextEngineParams = p_Params + k;

            memcpy(&p_KeyAndNextEngineParams->nextEngineParams,
                   &p_FmPcdCcGroupParams->nextEnginePerEntriesInGrp[j],
                   sizeof(t_FmPcdCcNextEngineParams));

            if ((p_KeyAndNextEngineParams->nextEngineParams.nextEngine
                    == e_FM_PCD_CC)
                    && p_KeyAndNextEngineParams->nextEngineParams.h_Manip)
            {
                err =
                        AllocAndFillAdForContLookupManip(
                                p_KeyAndNextEngineParams->nextEngineParams.params.ccParams.h_CcNode);
                if (err)
                {
                    DeleteTree(p_FmPcdCcTree, p_FmPcd);
                    XX_Free(p_Params);
                    REPORT_ERROR(MAJOR, E_NO_MEMORY, ("MURAM allocation for CC Tree"));
                    return ((void*)0);
                }
            }

            requiredAction |= UPDATE_CC_WITH_TREE;
            p_KeyAndNextEngineParams->requiredAction = requiredAction;

            k++;
        }
    }

    p_FmPcdCcTree->numOfEntries = (uint8_t)k;
    p_FmPcdCcTree->numOfGrps = p_PcdGroupsParam->numOfGrps;

    p_FmPcdCcTree->ccTreeBaseAddr =
            PTR_TO_UINT(FM_MURAM_AllocMem(FmPcdGetMuramHandle(h_FmPcd),
                            (uint32_t)( FM_PCD_MAX_NUM_OF_CC_GROUPS * FM_PCD_CC_AD_ENTRY_SIZE),
                            FM_PCD_CC_TREE_ADDR_ALIGN));
    if (!p_FmPcdCcTree->ccTreeBaseAddr)
    {
        DeleteTree(p_FmPcdCcTree, p_FmPcd);
        XX_Free(p_Params);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("MURAM allocation for CC Tree"));
        return ((void*)0);
    }
    MemSet8(
            UINT_TO_PTR(p_FmPcdCcTree->ccTreeBaseAddr), 0,
            (uint32_t)(FM_PCD_MAX_NUM_OF_CC_GROUPS * FM_PCD_CC_AD_ENTRY_SIZE));

    p_CcTreeTmp = UINT_TO_PTR(p_FmPcdCcTree->ccTreeBaseAddr);

    for (i = 0; i < numOfEntries; i++)
    {
        p_KeyAndNextEngineParams = p_Params + i;

        NextStepAd(p_CcTreeTmp, ((void*)0),
                   &p_KeyAndNextEngineParams->nextEngineParams, p_FmPcd);

        p_CcTreeTmp = PTR_MOVE(p_CcTreeTmp, FM_PCD_CC_AD_ENTRY_SIZE);

        memcpy(&p_FmPcdCcTree->keyAndNextEngineParams[i],
               p_KeyAndNextEngineParams,
               sizeof(t_FmPcdCcKeyAndNextEngineParams));

        if (p_FmPcdCcTree->keyAndNextEngineParams[i].nextEngineParams.nextEngine
                == e_FM_PCD_CC)
        {
            p_FmPcdCcNextNode =
                    (t_FmPcdCcNode*)p_FmPcdCcTree->keyAndNextEngineParams[i].nextEngineParams.params.ccParams.h_CcNode;
            p_CcInformation = FindNodeInfoInReleventLst(
                    &p_FmPcdCcNextNode->ccTreeIdLst, (t_Handle)p_FmPcdCcTree,
                    p_FmPcdCcNextNode->h_Spinlock);

            if (!p_CcInformation)
            {
                memset(&ccNodeInfo, 0, sizeof(t_CcNodeInformation));
                ccNodeInfo.h_CcNode = (t_Handle)p_FmPcdCcTree;
                ccNodeInfo.index = 1;
                EnqueueNodeInfoToRelevantLst(&p_FmPcdCcNextNode->ccTreeIdLst,
                                             &ccNodeInfo,
                                             p_FmPcdCcNextNode->h_Spinlock);
            }
            else
                p_CcInformation->index++;
        }
    }

    FmPcdIncNetEnvOwners(h_FmPcd, p_FmPcdCcTree->netEnvId);
    p_CcTreeTmp = UINT_TO_PTR(p_FmPcdCcTree->ccTreeBaseAddr);

    if (!FmPcdLockTryLockAll(p_FmPcd))
    {
        FM_PCD_CcRootDelete(p_FmPcdCcTree);
        XX_Free(p_Params);
        DBG(TRACE, ("FmPcdLockTryLockAll failed"));
        return ((void*)0);
    }

    for (i = 0; i < numOfEntries; i++)
    {
        if (p_FmPcdCcTree->keyAndNextEngineParams[i].requiredAction)
        {
            err = SetRequiredAction(
                    h_FmPcd,
                    p_FmPcdCcTree->keyAndNextEngineParams[i].requiredAction,
                    &p_FmPcdCcTree->keyAndNextEngineParams[i], p_CcTreeTmp, 1,
                    p_FmPcdCcTree);
            if (err)
            {
                FmPcdLockUnlockAll(p_FmPcd);
                FM_PCD_CcRootDelete(p_FmPcdCcTree);
                XX_Free(p_Params);
                REPORT_ERROR(MAJOR, E_NO_MEMORY, ("No memory"));
                return ((void*)0);
            }
            p_CcTreeTmp = PTR_MOVE(p_CcTreeTmp, FM_PCD_CC_AD_ENTRY_SIZE);
        }
    }

    FmPcdLockUnlockAll(p_FmPcd);
    p_FmPcdCcTree->p_Lock = FmPcdAcquireLock(p_FmPcd);
    if (!p_FmPcdCcTree->p_Lock)
    {
        FM_PCD_CcRootDelete(p_FmPcdCcTree);
        XX_Free(p_Params);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM CC lock"));
        return ((void*)0);
    }

    XX_Free(p_Params);

    return p_FmPcdCcTree;
}
