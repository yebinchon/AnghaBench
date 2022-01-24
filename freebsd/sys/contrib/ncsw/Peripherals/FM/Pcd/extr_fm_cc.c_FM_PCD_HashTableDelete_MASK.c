#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  TYPE_5__* t_Handle ;
struct TYPE_17__ {int numOfKeys; struct TYPE_17__* h_MissStatsCounters; struct TYPE_17__* h_FmPcd; TYPE_4__* keyAndNextEngineParams; } ;
typedef  TYPE_5__ t_FmPcdCcNode ;
typedef  int t_Error ;
struct TYPE_13__ {TYPE_5__* h_CcNode; } ;
struct TYPE_14__ {TYPE_1__ ccParams; } ;
struct TYPE_15__ {TYPE_2__ params; } ;
struct TYPE_16__ {TYPE_3__ nextEngineParams; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int E_NO_MEMORY ; 
 int E_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__**) ; 
 scalar_t__ FUNC6 (int) ; 

t_Error FUNC7(t_Handle h_HashTbl)
{
    t_FmPcdCcNode *p_HashTbl = (t_FmPcdCcNode *)h_HashTbl;
    t_Handle h_FmPcd;
    t_Handle *p_HashBuckets, h_MissStatsCounters;
    uint16_t i, numOfBuckets;
    t_Error err;

    FUNC4(p_HashTbl, E_INVALID_HANDLE);

    /* Store all hash buckets before the hash is freed */
    numOfBuckets = p_HashTbl->numOfKeys;

    p_HashBuckets = (t_Handle *)FUNC6(numOfBuckets * sizeof(t_Handle));
    if (!p_HashBuckets)
        FUNC3(MAJOR, E_NO_MEMORY, NO_MSG);

    for (i = 0; i < numOfBuckets; i++)
        p_HashBuckets[i] =
                p_HashTbl->keyAndNextEngineParams[i].nextEngineParams.params.ccParams.h_CcNode;

    h_FmPcd = p_HashTbl->h_FmPcd;
    h_MissStatsCounters = p_HashTbl->h_MissStatsCounters;

    /* Free the hash */
    err = FUNC1(p_HashTbl);

    /* Free each hash bucket */
    for (i = 0; i < numOfBuckets; i++)
        err |= FUNC1(p_HashBuckets[i]);

    FUNC5(p_HashBuckets);

    /* Free statistics counters for 'miss', if these were allocated */
    if (h_MissStatsCounters)
        FUNC0(FUNC2(h_FmPcd), h_MissStatsCounters);

    if (err)
        FUNC3(MAJOR, err, NO_MSG);

    return E_OK;
}