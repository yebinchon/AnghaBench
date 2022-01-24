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
struct evthread_win32_cond {int /*<<< orphan*/  lock; int /*<<< orphan*/  event; int /*<<< orphan*/  generation; int /*<<< orphan*/  n_to_wake; int /*<<< orphan*/  n_waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *cond_, int broadcast)
{
	struct evthread_win32_cond *cond = cond_;
	FUNC0(&cond->lock);
	if (broadcast)
		cond->n_to_wake = cond->n_waiting;
	else
		++cond->n_to_wake;
	cond->generation++;
	FUNC2(cond->event);
	FUNC1(&cond->lock);
	return 0;
}