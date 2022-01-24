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
struct semaphore {scalar_t__ value; int /*<<< orphan*/  mtx; int /*<<< orphan*/  waiters; int /*<<< orphan*/  cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct semaphore *s)
{

	FUNC1(&s->mtx);
	while (s->value == 0) {
		s->waiters++;
		FUNC0(&s->cv, &s->mtx);
		s->waiters--;
	}

	s->value--;
	FUNC2(&s->mtx);
}