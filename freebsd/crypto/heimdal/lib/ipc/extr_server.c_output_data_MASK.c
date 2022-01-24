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
struct client {size_t olen; int /*<<< orphan*/  flags; int /*<<< orphan*/ * outmsg; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAITING_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 

__attribute__((used)) static void
FUNC3(struct client *c, const void *data, size_t len)
{
    if (c->olen + len < c->olen)
	FUNC0();
    c->outmsg = FUNC1(c->outmsg, c->olen + len);
    FUNC2(&c->outmsg[c->olen], data, len);
    c->olen += len;
    c->flags |= WAITING_WRITE;
}