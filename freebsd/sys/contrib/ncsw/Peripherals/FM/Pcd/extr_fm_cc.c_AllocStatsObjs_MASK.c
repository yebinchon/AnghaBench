#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  void* t_Handle ;
struct TYPE_8__ {void* h_StatsCounters; void* h_StatsAd; } ;
typedef  TYPE_1__ t_FmPcdStatsObj ;
struct TYPE_9__ {scalar_t__ maxNumOfKeys; int /*<<< orphan*/  availableStatsLst; int /*<<< orphan*/  countersArraySize; int /*<<< orphan*/  h_FmPcd; } ;
typedef  TYPE_2__ t_FmPcdCcNode ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_ENTRY_SIZE ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_TABLE_ALIGN ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static t_Error FUNC10(t_FmPcdCcNode *p_CcNode)
{
    t_FmPcdStatsObj *p_StatsObj;
    t_Handle h_FmMuram, h_StatsAd, h_StatsCounters;
    uint32_t i;

    h_FmMuram = FUNC3(p_CcNode->h_FmPcd);
    if (!h_FmMuram)
        FUNC6(MAJOR, E_INVALID_HANDLE, ("FM MURAM"));

    /* Allocate statistics ADs and statistics counter. An extra pair (AD + counters)
     will be allocated to support runtime modifications */
    for (i = 0; i < p_CcNode->maxNumOfKeys + 2; i++)
    {
        /* Allocate list object structure */
        p_StatsObj = FUNC8(sizeof(t_FmPcdStatsObj));
        if (!p_StatsObj)
        {
            FUNC4(&p_CcNode->availableStatsLst, h_FmMuram);
            FUNC6(MAJOR, E_NO_MEMORY, ("Statistics object"));
        }
        FUNC9(p_StatsObj, 0, sizeof(t_FmPcdStatsObj));

        /* Allocate statistics AD from MURAM */
        h_StatsAd = (t_Handle)FUNC1(h_FmMuram,
                                                FM_PCD_CC_AD_ENTRY_SIZE,
                                                FM_PCD_CC_AD_TABLE_ALIGN);
        if (!h_StatsAd)
        {
            FUNC4(&p_CcNode->availableStatsLst, h_FmMuram);
            FUNC7(p_StatsObj);
            FUNC6(MAJOR, E_NO_MEMORY,
                         ("MURAM allocation for statistics ADs"));
        }
        FUNC5(h_StatsAd, 0, FM_PCD_CC_AD_ENTRY_SIZE);

        /* Allocate statistics counters from MURAM */
        h_StatsCounters = (t_Handle)FUNC1(
                h_FmMuram, p_CcNode->countersArraySize,
                FM_PCD_CC_AD_TABLE_ALIGN);
        if (!h_StatsCounters)
        {
            FUNC4(&p_CcNode->availableStatsLst, h_FmMuram);
            FUNC2(h_FmMuram, h_StatsAd);
            FUNC7(p_StatsObj);
            FUNC6(MAJOR, E_NO_MEMORY,
                         ("MURAM allocation for statistics counters"));
        }
        FUNC5(h_StatsCounters, 0, p_CcNode->countersArraySize);

        p_StatsObj->h_StatsAd = h_StatsAd;
        p_StatsObj->h_StatsCounters = h_StatsCounters;

        FUNC0(&p_CcNode->availableStatsLst, p_StatsObj);
    }

    return E_OK;
}