
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {int* frameLengthRanges; TYPE_2__* keyParams; } ;
struct TYPE_12__ {TYPE_3__ keysParams; } ;
typedef TYPE_4__ t_FmPcdCcNodeParams ;
struct TYPE_13__ {int statisticsMode; size_t numOfKeys; } ;
typedef TYPE_5__ t_FmPcdCcNode ;
typedef int t_Error ;
typedef int e_FmPcdCcStatsMode ;
struct TYPE_9__ {int statisticsEn; } ;
struct TYPE_10__ {TYPE_1__ ccNextEngineParams; } ;


 int E_INVALID_VALUE ;
 int E_OK ;
 int FM_PCD_CC_STATS_COUNTER_SIZE ;
 size_t FM_PCD_CC_STATS_MAX_NUM_OF_FLR ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int UNUSED (TYPE_4__*) ;





__attribute__((used)) static t_Error ValidateAndCalcStatsParams(t_FmPcdCcNode *p_CcNode,
                                          t_FmPcdCcNodeParams *p_CcNodeParam,
                                          uint32_t *p_NumOfRanges,
                                          uint32_t *p_CountersArraySize)
{
    e_FmPcdCcStatsMode statisticsMode = p_CcNode->statisticsMode;
    uint32_t i;

    UNUSED(p_CcNodeParam);

    switch (statisticsMode)
    {
        case 129:
            for (i = 0; i < p_CcNode->numOfKeys; i++)
                if (p_CcNodeParam->keysParams.keyParams[i].ccNextEngineParams.statisticsEn)
                    RETURN_ERROR(
                            MAJOR,
                            E_INVALID_VALUE,
                            ("Statistics cannot be enabled for key %d when statistics mode was set to 'NONE'", i));
            return E_OK;

        case 130:
        case 131:
            *p_NumOfRanges = 1;
            *p_CountersArraySize = 2 * FM_PCD_CC_STATS_COUNTER_SIZE;
            return E_OK;
        default:
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Statistics mode"));
    }
}
