#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  COP0_PERFVALUE0 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(int irq_number, uint64_t *registers, void *user_arg)
{
    uint64_t perf_counter;
    FUNC0(perf_counter, COP0_PERFVALUE0);
    if (perf_counter & (1ull << 63))
        FUNC1();
}