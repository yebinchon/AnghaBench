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
struct completion {int done; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct completion *c)
{

	FUNC0(FUNC1(&c->lock),
	    ("_completion_claim should be called with acquired lock"));
	FUNC0(c->done != 0, ("_completion_claim on non-waited completion"));
	if (c->done > 0)
		c->done--;
	else
		FUNC0(c->done == -1, ("Invalid value of c->done: %d", c->done));
}