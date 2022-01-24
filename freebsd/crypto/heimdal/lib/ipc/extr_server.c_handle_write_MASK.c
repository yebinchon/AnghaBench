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
struct client {size_t olen; int /*<<< orphan*/  flags; int /*<<< orphan*/ * outmsg; int /*<<< orphan*/  fd; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  WAITING_CLOSE ; 
 int /*<<< orphan*/  WAITING_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC3(struct client *c)
{
    ssize_t len;

    len = FUNC2(c->fd, c->outmsg, c->olen);
    if (len <= 0) {
	c->flags |= WAITING_CLOSE;
	c->flags &= ~(WAITING_WRITE);
    } else if (c->olen != (size_t)len) {
	FUNC1(&c->outmsg[0], &c->outmsg[len], c->olen - len);
	c->olen -= len;
    } else {
	c->olen = 0;
	FUNC0(c->outmsg);
	c->outmsg = NULL;
	c->flags &= ~(WAITING_WRITE);
    }
}