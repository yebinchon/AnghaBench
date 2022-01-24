#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct protoent {int /*<<< orphan*/  p_proto; } ;
struct TYPE_2__ {void* s_addr; } ;
struct nat44_cfg_redir {TYPE_1__ raddr; TYPE_1__ paddr; TYPE_1__ laddr; int /*<<< orphan*/  proto; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 void* INADDR_ANY ; 
 int /*<<< orphan*/  REDIR_PROTO ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct protoent* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 

__attribute__((used)) static int
FUNC4(char *buf, int *ac, char ***av)
{
	struct nat44_cfg_redir *r;
	struct protoent *protoent;
	size_t space;

	r = (struct nat44_cfg_redir *)buf;
	r->mode = REDIR_PROTO;
	/* Skip nat44_cfg_redir at beginning of buf. */
	buf = &buf[sizeof(struct nat44_cfg_redir)];
	space = sizeof(struct nat44_cfg_redir);

	/*
	 * Extract protocol.
	 */
	protoent = FUNC2(**av);
	if (protoent == NULL)
		FUNC1(EX_DATAERR, "redirect_proto: unknown protocol %s", **av);
	else
		r->proto = protoent->p_proto;

	(*av)++; (*ac)--;

	/*
	 * Extract local address.
	 */
	FUNC0(**av, &r->laddr);

	(*av)++; (*ac)--;

	/*
	 * Extract optional public address.
	 */
	if (*ac == 0) {
		r->paddr.s_addr = INADDR_ANY;
		r->raddr.s_addr = INADDR_ANY;
	} else {
		/* see above in setup_redir_port() */
		if (FUNC3(***av)) {
			FUNC0(**av, &r->paddr);
			(*av)++; (*ac)--;

			/*
			 * Extract optional remote address.
			 */
			/* see above in setup_redir_port() */
			if (*ac != 0 && FUNC3(***av)) {
				FUNC0(**av, &r->raddr);
				(*av)++; (*ac)--;
			}
		}
	}

	return (space);
}