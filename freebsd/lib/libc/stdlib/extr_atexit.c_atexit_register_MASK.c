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
struct atexit_fn {int dummy; } ;
struct atexit {scalar_t__ ind; struct atexit_fn* fns; struct atexit* next; } ;

/* Variables and functions */
 scalar_t__ ATEXIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct atexit* __atexit ; 
 int /*<<< orphan*/  atexit_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct atexit*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct atexit_fn *fptr)
{
	static struct atexit __atexit0;	/* one guaranteed table */
	struct atexit *p;

	FUNC0(&atexit_mutex);
	if ((p = __atexit) == NULL)
		__atexit = p = &__atexit0;
	else while (p->ind >= ATEXIT_SIZE) {
		struct atexit *old__atexit;
		old__atexit = __atexit;
	        FUNC1(&atexit_mutex);
		if ((p = (struct atexit *)FUNC3(sizeof(*p))) == NULL)
			return (-1);
		FUNC0(&atexit_mutex);
		if (old__atexit != __atexit) {
			/* Lost race, retry operation */
			FUNC1(&atexit_mutex);
			FUNC2(p);
			FUNC0(&atexit_mutex);
			p = __atexit;
			continue;
		}
		p->ind = 0;
		p->next = __atexit;
		__atexit = p;
	}
	p->fns[p->ind++] = *fptr;
	FUNC1(&atexit_mutex);
	return 0;
}