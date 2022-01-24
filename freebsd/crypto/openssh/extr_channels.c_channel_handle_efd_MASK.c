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
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_5__ {int efd; scalar_t__ extended_usage; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 scalar_t__ CHAN_EXTENDED_IGNORE ; 
 scalar_t__ CHAN_EXTENDED_READ ; 
 scalar_t__ CHAN_EXTENDED_WRITE ; 
 int FUNC0 (struct ssh*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ssh*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
	if (c->efd == -1)
		return 1;

	/** XXX handle drain efd, too */

	if (c->extended_usage == CHAN_EXTENDED_WRITE)
		return FUNC1(ssh, c, readset, writeset);
	else if (c->extended_usage == CHAN_EXTENDED_READ ||
	    c->extended_usage == CHAN_EXTENDED_IGNORE)
		return FUNC0(ssh, c, readset, writeset);

	return 1;
}