#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int core_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ sysinfo; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__ state ; 

void FUNC3(void)
{
    int core = FUNC0();
    uint32_t core_mask = 1 << core;
    
    FUNC1(&state.lock);
    state.sysinfo.core_mask = state.sysinfo.core_mask & ~core_mask;
    FUNC2(&state.lock);
}