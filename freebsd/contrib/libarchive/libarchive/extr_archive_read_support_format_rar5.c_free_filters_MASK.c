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
struct cdeque {int dummy; } ;
struct TYPE_2__ {scalar_t__ last_block_length; scalar_t__ last_block_start; struct cdeque filters; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ CDE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct cdeque*) ; 
 int /*<<< orphan*/  FUNC1 (struct filter_info**) ; 
 scalar_t__ FUNC2 (struct cdeque*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cdeque*) ; 
 int /*<<< orphan*/  FUNC4 (struct filter_info*) ; 

__attribute__((used)) static void FUNC5(struct rar5* rar) {
	struct cdeque* d = &rar->cstate.filters;

	/* Free any remaining filters. All filters should be naturally
	 * consumed by the unpacking function, so remaining filters after
	 * unpacking normally mean that unpacking wasn't successful.
	 * But still of course we shouldn't leak memory in such case. */

	/* cdeque_size() is a fast operation, so we can use it as a loop
	 * expression. */
	while(FUNC3(d) > 0) {
		struct filter_info* f = NULL;

		/* Pop_front will also decrease the collection's size. */
		if (CDE_OK == FUNC2(d, FUNC1(&f)))
			FUNC4(f);
	}

	FUNC0(d);

	/* Also clear out the variables needed for sanity checking. */
	rar->cstate.last_block_start = 0;
	rar->cstate.last_block_length = 0;
}