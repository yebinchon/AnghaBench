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
struct callout {void (* c_func ) (void*) ;scalar_t__ timeout; void* c_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct callout*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct callout*) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  head_callout ; 
 int /*<<< orphan*/  mtx_callout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ ticks ; 

void
FUNC4(struct callout *c, int to_ticks,
    void (*func) (void *), void *arg)
{
	FUNC1(c);

	c->c_func = func;
	c->c_arg = arg;
	c->timeout = ticks + to_ticks;

	FUNC2(&mtx_callout);
	FUNC0(&head_callout, c, entry);
	FUNC3(&mtx_callout);
}