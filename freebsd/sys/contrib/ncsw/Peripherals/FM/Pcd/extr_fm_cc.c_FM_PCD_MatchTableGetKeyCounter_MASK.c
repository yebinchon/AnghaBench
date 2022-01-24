#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_7__ {scalar_t__ statisticsMode; size_t numOfKeys; int /*<<< orphan*/  h_Spinlock; TYPE_2__* keyAndNextEngineParams; } ;
typedef  TYPE_3__ t_FmPcdCcNode ;
struct TYPE_6__ {TYPE_1__* p_StatsObj; } ;
struct TYPE_5__ {int /*<<< orphan*/ * h_StatsCounters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  FM_PCD_CC_STATS_COUNTER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ e_FM_PCD_CC_STATS_MODE_BYTE_AND_FRAME ; 
 scalar_t__ e_FM_PCD_CC_STATS_MODE_FRAME ; 
 scalar_t__ e_FM_PCD_CC_STATS_MODE_NONE ; 

uint32_t FUNC7(t_Handle h_CcNode, uint16_t keyIndex)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;
    uint32_t *p_StatsCounters, frameCount;
    uint32_t intFlags;

    FUNC4(p_CcNode, E_INVALID_HANDLE, 0);

    if (p_CcNode->statisticsMode == e_FM_PCD_CC_STATS_MODE_NONE)
    {
        FUNC3(MAJOR, E_INVALID_STATE, ("Statistics were not enabled for this match table"));
        return 0;
    }

    if ((p_CcNode->statisticsMode != e_FM_PCD_CC_STATS_MODE_FRAME)
            && (p_CcNode->statisticsMode
                    != e_FM_PCD_CC_STATS_MODE_BYTE_AND_FRAME))
    {
        FUNC3(MAJOR, E_INVALID_STATE, ("Frame count is not supported in the statistics mode of this match table"));
        return 0;
    }

    intFlags = FUNC5(p_CcNode->h_Spinlock);

    if (keyIndex >= p_CcNode->numOfKeys)
    {
        FUNC6(p_CcNode->h_Spinlock, intFlags);
        FUNC3(MAJOR, E_INVALID_STATE, ("The provided keyIndex exceeds the number of keys in this match table"));
        return 0;
    }

    if (!p_CcNode->keyAndNextEngineParams[keyIndex].p_StatsObj)
    {
        FUNC6(p_CcNode->h_Spinlock, intFlags);
        FUNC3(MAJOR, E_INVALID_STATE, ("Statistics were not enabled for this key"));
        return 0;
    }

    p_StatsCounters =
            p_CcNode->keyAndNextEngineParams[keyIndex].p_StatsObj->h_StatsCounters;
    FUNC0(p_StatsCounters);

    /* The first counter is byte counter, so we need to advance to the next counter */
    frameCount = FUNC1(*(uint32_t *)(FUNC2(p_StatsCounters,
                            FM_PCD_CC_STATS_COUNTER_SIZE)));

    FUNC6(p_CcNode->h_Spinlock, intFlags);

    return frameCount;
}