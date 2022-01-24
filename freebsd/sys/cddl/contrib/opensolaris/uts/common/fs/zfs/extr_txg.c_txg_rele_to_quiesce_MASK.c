#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* th_cpu; } ;
typedef  TYPE_1__ txg_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  tc_open_lock; int /*<<< orphan*/  tc_lock; } ;
typedef  TYPE_2__ tx_cpu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(txg_handle_t *th)
{
	tx_cpu_t *tc = th->th_cpu;

	FUNC0(!FUNC1(&tc->tc_lock));
	FUNC2(&tc->tc_open_lock);
}