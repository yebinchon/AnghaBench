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
struct completion {scalar_t__ done; int /*<<< orphan*/  lock; int /*<<< orphan*/  cv; } ;

/* Variables and functions */
 int EINTR ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct completion *c)
{
	int res = 0;

	FUNC2(&c->lock);
	while (c->done == 0) {
		res = FUNC1(&c->cv, &c->lock);
		if (res)
			goto out;
	}

	FUNC0(c);

out:
	FUNC3(&c->lock);

	if ((res == EINTR) || (res == ERESTART))
		res = -ERESTART;
	return res;
}