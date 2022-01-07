
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_10__ {scalar_t__ statisticsMode; int numOfStatsFLRs; TYPE_2__* keyAndNextEngineParams; } ;
typedef TYPE_3__ t_FmPcdCcNode ;
struct TYPE_11__ {void** frameLengthRangeCount; int frameCount; void* byteCount; } ;
typedef TYPE_4__ t_FmPcdCcKeyStatistics ;
typedef int t_Error ;
struct TYPE_9__ {TYPE_1__* p_StatsObj; } ;
struct TYPE_8__ {int* h_StatsCounters; } ;


 int ASSERT_COND (int*) ;
 int E_INVALID_STATE ;
 int E_OK ;
 int FM_PCD_CC_STATS_COUNTER_SIZE ;
 void* GET_UINT32 (int) ;
 int MAJOR ;
 int* PTR_MOVE (int*,int ) ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ e_FM_PCD_CC_STATS_MODE_NONE ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static t_Error MatchTableGetKeyStatistics(
        t_FmPcdCcNode *p_CcNode, uint16_t keyIndex,
        t_FmPcdCcKeyStatistics *p_KeyStatistics)
{
    uint32_t *p_StatsCounters, i;

    if (p_CcNode->statisticsMode == e_FM_PCD_CC_STATS_MODE_NONE)
        RETURN_ERROR(MAJOR, E_INVALID_STATE,
                     ("Statistics were not enabled for this match table"));

    if (!p_CcNode->keyAndNextEngineParams[keyIndex].p_StatsObj)
        RETURN_ERROR(MAJOR, E_INVALID_STATE,
                     ("Statistics were not enabled for this key"));

    memset(p_KeyStatistics, 0, sizeof(t_FmPcdCcKeyStatistics));

    p_StatsCounters =
            p_CcNode->keyAndNextEngineParams[keyIndex].p_StatsObj->h_StatsCounters;
    ASSERT_COND(p_StatsCounters);

    p_KeyStatistics->byteCount = GET_UINT32(*p_StatsCounters);

    for (i = 1; i <= p_CcNode->numOfStatsFLRs; i++)
    {
        p_StatsCounters =
                PTR_MOVE(p_StatsCounters, FM_PCD_CC_STATS_COUNTER_SIZE);

        p_KeyStatistics->frameCount += GET_UINT32(*p_StatsCounters);





    }

    return E_OK;
}
