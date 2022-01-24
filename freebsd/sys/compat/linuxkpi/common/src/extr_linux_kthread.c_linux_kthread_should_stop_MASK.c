#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  kthread_flags; } ;

/* Variables and functions */
 int KTHREAD_SHOULD_STOP_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 

bool
FUNC1(void)
{

	return (FUNC0(&current->kthread_flags) & KTHREAD_SHOULD_STOP_MASK);
}