#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
struct TYPE_3__ {void* s_addr; } ;
struct nat44_cfg_spool {void* port; TYPE_1__ addr; } ;
struct nat44_cfg_redir {scalar_t__ proto; int pport_cnt; int rport_cnt; int /*<<< orphan*/  spool_cnt; void* pport; void* rport; TYPE_1__ raddr; void* lport; TYPE_1__ paddr; TYPE_1__ laddr; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  port_range ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* INADDR_ANY ; 
 void* INADDR_NONE ; 
 scalar_t__ IPPROTO_SCTP ; 
 int /*<<< orphan*/  REDIR_PORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*,TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (char) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static int
FUNC12(char *buf, int *ac, char ***av)
{
	struct nat44_cfg_redir *r;
	char *sep, *protoName, *lsnat = NULL;
	size_t space;
	u_short numLocalPorts;
	port_range portRange;

	numLocalPorts = 0;

	r = (struct nat44_cfg_redir *)buf;
	r->mode = REDIR_PORT;
	/* Skip nat44_cfg_redir at beginning of buf. */
	buf = &buf[sizeof(struct nat44_cfg_redir)];
	space = sizeof(struct nat44_cfg_redir);

	/*
	 * Extract protocol.
	 */
	r->proto = FUNC7(**av);
	protoName = **av;
	(*av)++; (*ac)--;

	/*
	 * Extract local address.
	 */
	if (FUNC10(**av, ',') != NULL) {
		r->laddr.s_addr = INADDR_NONE;
		r->lport = ~0;
		numLocalPorts = 1;
		lsnat = **av;
	} else {
		/*
		 * The sctp nat does not allow the port numbers to be mapped to
		 * new port numbers. Therefore, no ports are to be specified
		 * in the target port field.
		 */
		if (r->proto == IPPROTO_SCTP) {
			if (FUNC10(**av, ':'))
				FUNC8(EX_DATAERR, "redirect_port:"
				    "port numbers do not change in sctp, so do "
				    "not specify them as part of the target");
			else
				FUNC4(**av, &r->laddr);
		} else {
			if (FUNC5(**av, &r->laddr, protoName,
			    &portRange) != 0)
				FUNC8(EX_DATAERR, "redirect_port: "
				    "invalid local port range");

			r->lport = FUNC0(portRange);
			numLocalPorts = FUNC1(portRange);
		}
	}
	(*av)++; (*ac)--;

	/*
	 * Extract public port and optionally address.
	 */
	if (FUNC10(**av, ':') != NULL) {
		if (FUNC5(**av, &r->paddr, protoName,
		    &portRange) != 0)
			FUNC8(EX_DATAERR, "redirect_port: "
			    "invalid public port range");
	} else {
		r->paddr.s_addr = INADDR_ANY;
		if (FUNC6(**av, protoName, &portRange) != 0)
			FUNC8(EX_DATAERR, "redirect_port: "
			    "invalid public port range");
	}

	r->pport = FUNC0(portRange);
	if (r->proto == IPPROTO_SCTP) { /* so the logic below still works */
		numLocalPorts = FUNC1(portRange);
		r->lport = r->pport;
	}
	r->pport_cnt = FUNC1(portRange);
	(*av)++; (*ac)--;

	/*
	 * Extract remote address and optionally port.
	 */
	/*
	 * NB: isdigit(**av) => we've to check that next parameter is really an
	 * option for this redirect entry, else stop here processing arg[cv].
	 */
	if (*ac != 0 && FUNC9(***av)) {
		if (FUNC10(**av, ':') != NULL) {
			if (FUNC5(**av, &r->raddr, protoName,
			    &portRange) != 0)
				FUNC8(EX_DATAERR, "redirect_port: "
				    "invalid remote port range");
		} else {
			FUNC2(portRange, 0);
			FUNC3(portRange, 1);
			FUNC4(**av, &r->raddr);
		}
		(*av)++; (*ac)--;
	} else {
		FUNC2(portRange, 0);
		FUNC3(portRange, 1);
		r->raddr.s_addr = INADDR_ANY;
	}
	r->rport = FUNC0(portRange);
	r->rport_cnt = FUNC1(portRange);

	/*
	 * Make sure port ranges match up, then add the redirect ports.
	 */
	if (numLocalPorts != r->pport_cnt)
		FUNC8(EX_DATAERR, "redirect_port: "
		    "port ranges must be equal in size");

	/* Remote port range is allowed to be '0' which means all ports. */
	if (r->rport_cnt != numLocalPorts &&
	    (r->rport_cnt != 1 || r->rport != 0))
		FUNC8(EX_DATAERR, "redirect_port: remote port must"
		    "be 0 or equal to local port range in size");

	/* Setup LSNAT server pool. */
	if (lsnat != NULL) {
		struct nat44_cfg_spool *spool;

		sep = FUNC11(lsnat, ",");
		while (sep != NULL) {
			spool = (struct nat44_cfg_spool *)buf;
			space += sizeof(struct nat44_cfg_spool);
			/*
			 * The sctp nat does not allow the port numbers to
			 * be mapped to new port numbers. Therefore, no ports
			 * are to be specified in the target port field.
			 */
			if (r->proto == IPPROTO_SCTP) {
				if (FUNC10 (sep, ':')) {
					FUNC8(EX_DATAERR, "redirect_port:"
					    "port numbers do not change in "
					    "sctp, so do not specify them as "
					    "part of the target");
				} else {
					FUNC4(sep, &spool->addr);
					spool->port = r->pport;
				}
			} else {
				if (FUNC5(sep, &spool->addr,
					protoName, &portRange) != 0)
					FUNC8(EX_DATAERR, "redirect_port:"
					    "invalid local port range");
				if (FUNC1(portRange) != 1)
					FUNC8(EX_DATAERR, "redirect_port: "
					    "local port must be single in "
					    "this context");
				spool->port = FUNC0(portRange);
			}
			r->spool_cnt++;
			/* Point to the next possible nat44_cfg_spool. */
			buf = &buf[sizeof(struct nat44_cfg_spool)];
			sep = FUNC11(NULL, ",");
		}
	}

	return (space);
}