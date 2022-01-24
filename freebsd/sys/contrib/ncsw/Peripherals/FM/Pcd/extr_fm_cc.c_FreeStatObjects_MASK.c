#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t_List ;
typedef  int /*<<< orphan*/  t_Handle ;
struct TYPE_5__ {int /*<<< orphan*/  h_StatsCounters; int /*<<< orphan*/  h_StatsAd; } ;
typedef  TYPE_1__ t_FmPcdStatsObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(t_List *p_List, t_Handle h_FmMuram)
{
    t_FmPcdStatsObj *p_StatsObj;

    while (!FUNC3(p_List))
    {
        p_StatsObj = FUNC1(p_List);
        FUNC0(p_StatsObj);

        FUNC2(h_FmMuram, p_StatsObj->h_StatsAd);
        FUNC2(h_FmMuram, p_StatsObj->h_StatsCounters);

        FUNC4(p_StatsObj);
    }
}