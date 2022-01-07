
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* t_Handle ;
struct TYPE_11__ {int h_StatsCounters; int h_StatsAd; scalar_t__ h_FmPcd; int availableStatsLst; int countersArraySize; scalar_t__ maxNumOfKeys; } ;
typedef TYPE_1__ t_FmPcdStatsObj ;
typedef TYPE_1__ t_FmPcdCcNode ;
struct TYPE_12__ {TYPE_1__* h_FmMuram; } ;
typedef TYPE_4__ t_FmPcd ;


 int ASSERT_COND (TYPE_1__*) ;
 int EnqueueStatsObj (int *,TYPE_1__*) ;
 int FM_MURAM_FreeMem (TYPE_1__*,int ) ;
 int MemSet8 (int ,int ,int ) ;
 int XX_Free (TYPE_1__*) ;

__attribute__((used)) static void PutStatsObj(t_FmPcdCcNode *p_CcNode, t_FmPcdStatsObj *p_StatsObj)
{
    t_Handle h_FmMuram;

    ASSERT_COND(p_CcNode);
    ASSERT_COND(p_StatsObj);



    if (p_CcNode->maxNumOfKeys)
    {

        MemSet8(p_StatsObj->h_StatsCounters, 0, p_CcNode->countersArraySize);

        EnqueueStatsObj(&p_CcNode->availableStatsLst, p_StatsObj);
    }
    else
    {
        h_FmMuram = ((t_FmPcd *)(p_CcNode->h_FmPcd))->h_FmMuram;
        ASSERT_COND(h_FmMuram);

        FM_MURAM_FreeMem(h_FmMuram, p_StatsObj->h_StatsAd);
        FM_MURAM_FreeMem(h_FmMuram, p_StatsObj->h_StatsCounters);

        XX_Free(p_StatsObj);
    }
}
