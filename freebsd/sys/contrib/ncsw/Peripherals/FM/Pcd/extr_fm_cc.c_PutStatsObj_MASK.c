#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* t_Handle ;
struct TYPE_11__ {int /*<<< orphan*/  h_StatsCounters; int /*<<< orphan*/  h_StatsAd; scalar_t__ h_FmPcd; int /*<<< orphan*/  availableStatsLst; int /*<<< orphan*/  countersArraySize; scalar_t__ maxNumOfKeys; } ;
typedef  TYPE_1__ t_FmPcdStatsObj ;
typedef  TYPE_1__ t_FmPcdCcNode ;
struct TYPE_12__ {TYPE_1__* h_FmMuram; } ;
typedef  TYPE_4__ t_FmPcd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(t_FmPcdCcNode *p_CcNode, t_FmPcdStatsObj *p_StatsObj)
{
    t_Handle h_FmMuram;

    FUNC0(p_CcNode);
    FUNC0(p_StatsObj);

    /* If 'maxNumOfKeys' was passed, all statistics object were preallocated
     upon node initialization and now will be enqueued back to the list */
    if (p_CcNode->maxNumOfKeys)
    {
        /* Nullify counters */
        FUNC3(p_StatsObj->h_StatsCounters, 0, p_CcNode->countersArraySize);

        FUNC1(&p_CcNode->availableStatsLst, p_StatsObj);
    }
    else
    {
        h_FmMuram = ((t_FmPcd *)(p_CcNode->h_FmPcd))->h_FmMuram;
        FUNC0(h_FmMuram);

        FUNC2(h_FmMuram, p_StatsObj->h_StatsAd);
        FUNC2(h_FmMuram, p_StatsObj->h_StatsCounters);

        FUNC4(p_StatsObj);
    }
}