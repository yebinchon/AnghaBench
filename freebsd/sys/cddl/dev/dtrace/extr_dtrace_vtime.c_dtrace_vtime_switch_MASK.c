#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ t_dtrace_start; } ;
typedef  TYPE_1__ kthread_t ;
typedef  scalar_t__ hrtime_t ;
typedef  int /*<<< orphan*/  dtrace_icookie_t ;
struct TYPE_5__ {scalar_t__ t_dtrace_start; int /*<<< orphan*/  t_dtrace_vtime; } ;

/* Variables and functions */
 TYPE_3__* curthread ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(kthread_t *next)
{
	dtrace_icookie_t cookie;
	hrtime_t ts;

	cookie = FUNC1();
	ts = FUNC0();

	if (curthread->t_dtrace_start != 0) {
		curthread->t_dtrace_vtime += ts - curthread->t_dtrace_start;
		curthread->t_dtrace_start = 0;
	}

	if (next != NULL)
		next->t_dtrace_start = ts;

	FUNC2(cookie);
}