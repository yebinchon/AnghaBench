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
struct event_changelist {int changes_size; struct event_change* changes; } ;
struct event_change {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct event_change* FUNC1 (struct event_change*,int) ; 

__attribute__((used)) static int
FUNC2(struct event_changelist *changelist)
{
	int new_size;
	struct event_change *new_changes;
	if (changelist->changes_size < 64)
		new_size = 64;
	else
		new_size = changelist->changes_size * 2;

	new_changes = FUNC1(changelist->changes,
	    new_size * sizeof(struct event_change));

	if (FUNC0(new_changes == NULL))
		return (-1);

	changelist->changes = new_changes;
	changelist->changes_size = new_size;

	return (0);
}