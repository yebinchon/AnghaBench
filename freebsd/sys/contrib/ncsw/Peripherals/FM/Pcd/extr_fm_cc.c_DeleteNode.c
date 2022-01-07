
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int t_Handle ;
struct TYPE_8__ {scalar_t__ statisticsMode; size_t numOfKeys; int ccTreesLst; int ccTreeIdLst; int ccPrevNodesLst; int availableStatsLst; int h_FmPcd; TYPE_1__* keyAndNextEngineParams; int h_PrivMissStatsCounters; scalar_t__ isHashBucket; int * h_Spinlock; int * h_StatsFLRs; int * h_TmpAd; int * h_Ad; int * h_AdTable; int * h_KeysMatchTable; struct TYPE_8__* p_GlblMask; } ;
typedef TYPE_2__ t_FmPcdCcNode ;
struct TYPE_9__ {int h_StatsCounters; } ;
struct TYPE_7__ {TYPE_5__* p_StatsObj; } ;


 int ASSERT_COND (int ) ;
 int FM_MURAM_FreeMem (int ,int *) ;
 int FmPcdGetMuramHandle (int ) ;
 int FreeStatObjects (int *,int ) ;
 int NCSW_LIST_Del (int *) ;
 int NCSW_LIST_IsEmpty (int *) ;
 int PutStatsObj (TYPE_2__*,TYPE_5__*) ;
 int ReleaseLst (int *) ;
 int XX_Free (TYPE_2__*) ;
 int XX_FreeSpinlock (int *) ;
 scalar_t__ e_FM_PCD_CC_STATS_MODE_NONE ;

__attribute__((used)) static void DeleteNode(t_FmPcdCcNode *p_CcNode)
{
    uint32_t i;

    if (!p_CcNode)
        return;

    if (p_CcNode->p_GlblMask)
    {
        XX_Free(p_CcNode->p_GlblMask);
        p_CcNode->p_GlblMask = ((void*)0);
    }

    if (p_CcNode->h_KeysMatchTable)
    {
        FM_MURAM_FreeMem(FmPcdGetMuramHandle(p_CcNode->h_FmPcd),
                         p_CcNode->h_KeysMatchTable);
        p_CcNode->h_KeysMatchTable = ((void*)0);
    }

    if (p_CcNode->h_AdTable)
    {
        FM_MURAM_FreeMem(FmPcdGetMuramHandle(p_CcNode->h_FmPcd),
                         p_CcNode->h_AdTable);
        p_CcNode->h_AdTable = ((void*)0);
    }

    if (p_CcNode->h_Ad)
    {
        FM_MURAM_FreeMem(FmPcdGetMuramHandle(p_CcNode->h_FmPcd),
                         p_CcNode->h_Ad);
        p_CcNode->h_Ad = ((void*)0);
        p_CcNode->h_TmpAd = ((void*)0);
    }

    if (p_CcNode->h_StatsFLRs)
    {
        FM_MURAM_FreeMem(FmPcdGetMuramHandle(p_CcNode->h_FmPcd),
                         p_CcNode->h_StatsFLRs);
        p_CcNode->h_StatsFLRs = ((void*)0);
    }

    if (p_CcNode->h_Spinlock)
    {
        XX_FreeSpinlock(p_CcNode->h_Spinlock);
        p_CcNode->h_Spinlock = ((void*)0);
    }


    if (p_CcNode->isHashBucket
            && (p_CcNode->statisticsMode != e_FM_PCD_CC_STATS_MODE_NONE))
        p_CcNode->keyAndNextEngineParams[p_CcNode->numOfKeys].p_StatsObj->h_StatsCounters =
                p_CcNode->h_PrivMissStatsCounters;


    for (i = 0; i < p_CcNode->numOfKeys + 1; i++)
        if (p_CcNode->keyAndNextEngineParams[i].p_StatsObj)
            PutStatsObj(p_CcNode,
                        p_CcNode->keyAndNextEngineParams[i].p_StatsObj);

    if (!NCSW_LIST_IsEmpty(&p_CcNode->availableStatsLst))
    {
        t_Handle h_FmMuram = FmPcdGetMuramHandle(p_CcNode->h_FmPcd);
        ASSERT_COND(h_FmMuram);

        FreeStatObjects(&p_CcNode->availableStatsLst, h_FmMuram);
    }

    NCSW_LIST_Del(&p_CcNode->availableStatsLst);

    ReleaseLst(&p_CcNode->ccPrevNodesLst);
    ReleaseLst(&p_CcNode->ccTreeIdLst);
    ReleaseLst(&p_CcNode->ccTreesLst);

    XX_Free(p_CcNode);
}
