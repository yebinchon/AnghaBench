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
struct TYPE_4__ {int ml_num_sublists; TYPE_2__* ml_sublists; } ;
typedef  TYPE_1__ multilist_t ;
struct TYPE_5__ {int /*<<< orphan*/  mls_lock; int /*<<< orphan*/  mls_list; } ;
typedef  TYPE_2__ multilist_sublist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(multilist_t *ml)
{
	for (int i = 0; i < ml->ml_num_sublists; i++) {
		multilist_sublist_t *mls = &ml->ml_sublists[i];
		/* See comment in multilist_insert(). */
		boolean_t need_lock = !FUNC0(&mls->mls_lock);

		if (need_lock)
			FUNC2(&mls->mls_lock);

		if (!FUNC1(&mls->mls_list)) {
			if (need_lock)
				FUNC3(&mls->mls_lock);

			return (FALSE);
		}

		if (need_lock)
			FUNC3(&mls->mls_lock);
	}

	return (TRUE);
}