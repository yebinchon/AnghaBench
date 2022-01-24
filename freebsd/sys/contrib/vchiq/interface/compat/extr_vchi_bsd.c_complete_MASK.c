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
struct completion {int done; int /*<<< orphan*/  lock; int /*<<< orphan*/  cv; } ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct completion *c)
{
	FUNC2(&c->lock);

	if (c->done >= 0) {
		FUNC0(c->done < INT_MAX, ("c->done overflow")); /* XXX check */
		c->done++;
		FUNC1(&c->cv);
	} else {
		FUNC0(c->done == -1, ("Invalid value of c->done: %d", c->done));
	}

	FUNC3(&c->lock);
}