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
struct interface {int dummy; } ;
struct ctl_trap {int tr_flags; struct interface* tr_localaddr; int /*<<< orphan*/  tr_addr; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (struct ctl_trap*) ; 
 int TRAP_INUSE ; 
 struct ctl_trap* ctl_traps ; 

__attribute__((used)) static struct ctl_trap *
FUNC2(
	sockaddr_u *raddr,
	struct interface *linter
	)
{
	size_t	n;

	for (n = 0; n < FUNC1(ctl_traps); n++)
		if ((ctl_traps[n].tr_flags & TRAP_INUSE)
		    && FUNC0(raddr, &ctl_traps[n].tr_addr)
		    && (linter == ctl_traps[n].tr_localaddr))
			return &ctl_traps[n];

	return NULL;
}