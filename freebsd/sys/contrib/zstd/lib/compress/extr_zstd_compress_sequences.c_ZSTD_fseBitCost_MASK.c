#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int stateLog; int /*<<< orphan*/  symbolTT; } ;
typedef  int /*<<< orphan*/  FSE_CTable ;
typedef  TYPE_1__ FSE_CState_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int const,unsigned int,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,unsigned int const,...) ; 
 unsigned int const FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static size_t FUNC4(
    FSE_CTable const* ctable,
    unsigned const* count,
    unsigned const max)
{
    unsigned const kAccuracyLog = 8;
    size_t cost = 0;
    unsigned s;
    FSE_CState_t cstate;
    FUNC1(&cstate, ctable);
    FUNC2(FUNC3(ctable) < max, GENERIC,
                    "Repeat FSE_CTable has maxSymbolValue %u < %u",
                    FUNC3(ctable), max);
    for (s = 0; s <= max; ++s) {
        unsigned const tableLog = cstate.stateLog;
        unsigned const badCost = (tableLog + 1) << kAccuracyLog;
        unsigned const bitCost = FUNC0(cstate.symbolTT, tableLog, s, kAccuracyLog);
        if (count[s] == 0)
            continue;
        FUNC2(bitCost >= badCost, GENERIC,
                        "Repeat FSE_CTable has Prob[%u] == 0", s);
        cost += count[s] * bitCost;
    }
    return cost >> kAccuracyLog;
}