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
struct timer_list {void (* function ) (unsigned long) ;unsigned long data; int /*<<< orphan*/  mtx; int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct timer_list *t = (struct timer_list *) arg;
	void (*function)(unsigned long);

	FUNC3(&t->mtx);
	if (FUNC2(&t->callout)) {
		/* callout was reset */
		FUNC4(&t->mtx);
		return;
	}
	if (!FUNC0(&t->callout)) {
		/* callout was stopped */
		FUNC4(&t->mtx);
		return;
	}
	FUNC1(&t->callout);

	function = t->function;
	FUNC4(&t->mtx);

	function(t->data);
}