#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_5__ {int detach_close; int /*<<< orphan*/  self; int /*<<< orphan*/  (* detach_user ) (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssh*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ssh *ssh, Channel *c)
{
	if (c == NULL)
		return;
	if (c->detach_user != NULL) {
		if (!FUNC0(ssh, c, c->detach_close))
			return;
		FUNC2("channel %d: gc: notify user", c->self);
		c->detach_user(ssh, c->self, NULL);
		/* if we still have a callback */
		if (c->detach_user != NULL)
			return;
		FUNC2("channel %d: gc: user detached", c->self);
	}
	if (!FUNC0(ssh, c, 1))
		return;
	FUNC2("channel %d: garbage collecting", c->self);
	FUNC1(ssh, c);
}