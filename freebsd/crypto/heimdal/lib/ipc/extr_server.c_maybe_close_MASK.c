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
struct client {scalar_t__ calls; int flags; int /*<<< orphan*/  fd; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int WAITING_READ ; 
 int WAITING_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct client*) ; 

__attribute__((used)) static int
FUNC5(struct client *c)
{
    if (c->calls != 0)
	return 0;
    if (c->flags & (WAITING_READ|WAITING_WRITE))
	return 0;

#ifdef HAVE_GCD
    dispatch_source_cancel(c->in);
    if ((c->flags & WAITING_READ) == 0)
	dispatch_resume(c->in);
    dispatch_release(c->in);

    dispatch_source_cancel(c->out);
    if ((c->flags & WAITING_WRITE) == 0)
	dispatch_resume(c->out);
    dispatch_release(c->out);
#endif
    FUNC0(c->fd); /* ref count fd close */
    FUNC4(c);
    return 1;
}