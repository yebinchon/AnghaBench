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
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct completion *c, unsigned long timeout)
{
	int res = 0;
	unsigned long start, now;
	start = jiffies;

	FUNC3(&c->lock);
	while (c->done == 0) {
		res = FUNC2(&c->cv, &c->lock, timeout);
		if (res)
			goto out;
		now = jiffies;
		if (timeout < (now - start)) {
			res = EWOULDBLOCK;
			goto out;
		}

		timeout -= (now - start);
		start = now;
	}

	FUNC1(c);
	res = 0;

out:
	FUNC4(&c->lock);

	if (res == EWOULDBLOCK) {
		return 0;
	} else if ((res == EINTR) || (res == ERESTART)) {
		return -ERESTART;
	} else {
		FUNC0((res == 0), ("res = %d", res));
		return timeout;
	}
}