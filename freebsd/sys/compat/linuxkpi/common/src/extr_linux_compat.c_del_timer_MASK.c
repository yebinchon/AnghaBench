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
struct timer_list {int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

int
FUNC1(struct timer_list *timer)
{

	if (FUNC0(&(timer)->callout) == -1)
		return (0);
	return (1);
}