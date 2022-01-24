#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  TYPE_5__* t_Handle ;
struct TYPE_18__ {size_t numOfKeys; void* statsEnForMiss; scalar_t__ h_MissStatsCounters; TYPE_4__* keyAndNextEngineParams; } ;
typedef  TYPE_6__ t_FmPcdCcNode ;
struct TYPE_17__ {void* statisticsEn; } ;
typedef  TYPE_5__ t_FmPcdCcNextEngineParams ;
typedef  scalar_t__ t_Error ;
struct TYPE_13__ {TYPE_5__* h_CcNode; } ;
struct TYPE_14__ {TYPE_1__ ccParams; } ;
struct TYPE_15__ {TYPE_2__ params; } ;
struct TYPE_16__ {TYPE_3__ nextEngineParams; } ;

/* Variables and functions */
 scalar_t__ E_CONFLICT ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 scalar_t__ E_OK ; 
 void* FALSE ; 
 int FM_PCD_CC_STATS_COUNTER_SIZE ; 
 scalar_t__ FUNC0 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 

t_Error FUNC4(
        t_Handle h_HashTbl,
        t_FmPcdCcNextEngineParams *p_FmPcdCcNextEngineParams)
{
    t_FmPcdCcNode *p_HashTbl = (t_FmPcdCcNode *)h_HashTbl;
    t_Handle h_HashBucket;
    uint8_t i;
    bool nullifyMissStats = FALSE;
    t_Error err;

    FUNC2(h_HashTbl, E_INVALID_HANDLE);
    FUNC2(p_FmPcdCcNextEngineParams, E_NULL_POINTER);

    if ((!p_HashTbl->h_MissStatsCounters)
            && (p_FmPcdCcNextEngineParams->statisticsEn))
        FUNC1(
                MAJOR,
                E_CONFLICT,
                ("Statistics are requested for a key, but statistics mode was set"
                "to 'NONE' upon initialization"));

    if (p_HashTbl->h_MissStatsCounters)
    {
        if ((!p_HashTbl->statsEnForMiss)
                && (p_FmPcdCcNextEngineParams->statisticsEn))
            nullifyMissStats = TRUE;

        if ((p_HashTbl->statsEnForMiss)
                && (!p_FmPcdCcNextEngineParams->statisticsEn))
        {
            p_HashTbl->statsEnForMiss = FALSE;
            p_FmPcdCcNextEngineParams->statisticsEn = TRUE;
        }
    }

    for (i = 0; i < p_HashTbl->numOfKeys; i++)
    {
        h_HashBucket =
                p_HashTbl->keyAndNextEngineParams[i].nextEngineParams.params.ccParams.h_CcNode;

        err = FUNC0(h_HashBucket,
                                                    p_FmPcdCcNextEngineParams);
        if (err)
            FUNC1(MAJOR, err, NO_MSG);
    }

    if (nullifyMissStats)
    {
        FUNC3(p_HashTbl->h_MissStatsCounters, 0,
               (2 * FM_PCD_CC_STATS_COUNTER_SIZE));
        FUNC3(p_HashTbl->h_MissStatsCounters, 0,
               (2 * FM_PCD_CC_STATS_COUNTER_SIZE));
        p_HashTbl->statsEnForMiss = TRUE;
    }

    return E_OK;
}