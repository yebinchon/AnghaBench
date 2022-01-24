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
struct protoent {char* p_name; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct nat44_cfg_spool {int port; TYPE_1__ addr; } ;
struct nat44_cfg_redir {int mode; int spool_cnt; int lport; int pport_cnt; int pport; int rport; int rport_cnt; TYPE_1__ raddr; TYPE_1__ paddr; TYPE_1__ laddr; int /*<<< orphan*/  proto; } ;
struct nat44_cfg_nat {char* name; char* if_name; int mode; int redir_cnt; TYPE_1__ ip; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int PKT_ALIAS_DENY_INCOMING ; 
 int PKT_ALIAS_LOG ; 
 int PKT_ALIAS_PROXY_ONLY ; 
 int PKT_ALIAS_RESET_ON_ADDR_CHANGE ; 
 int PKT_ALIAS_REVERSE ; 
 int PKT_ALIAS_SAME_PORTS ; 
 int PKT_ALIAS_SKIP_GLOBAL ; 
 int PKT_ALIAS_UNREGISTERED_ONLY ; 
#define  REDIR_ADDR 130 
#define  REDIR_PORT 129 
#define  REDIR_PROTO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct protoent* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct nat44_cfg_nat *n, void *arg)
{
	int i, cnt, off;
	struct nat44_cfg_redir *t;
	struct nat44_cfg_spool *s;
	caddr_t buf;
	struct protoent *p;

	buf = (caddr_t)n;
	off = sizeof(*n);
	FUNC3("ipfw nat %s config", n->name);
	if (FUNC4(n->if_name) != 0)
		FUNC3(" if %s", n->if_name);
	else if (n->ip.s_addr != 0)
		FUNC3(" ip %s", FUNC2(n->ip));
	while (n->mode != 0) {
		if (n->mode & PKT_ALIAS_LOG) {
			FUNC3(" log");
			n->mode &= ~PKT_ALIAS_LOG;
		} else if (n->mode & PKT_ALIAS_DENY_INCOMING) {
			FUNC3(" deny_in");
			n->mode &= ~PKT_ALIAS_DENY_INCOMING;
		} else if (n->mode & PKT_ALIAS_SAME_PORTS) {
			FUNC3(" same_ports");
			n->mode &= ~PKT_ALIAS_SAME_PORTS;
		} else if (n->mode & PKT_ALIAS_SKIP_GLOBAL) {
			FUNC3(" skip_global");
			n->mode &= ~PKT_ALIAS_SKIP_GLOBAL;
		} else if (n->mode & PKT_ALIAS_UNREGISTERED_ONLY) {
			FUNC3(" unreg_only");
			n->mode &= ~PKT_ALIAS_UNREGISTERED_ONLY;
		} else if (n->mode & PKT_ALIAS_RESET_ON_ADDR_CHANGE) {
			FUNC3(" reset");
			n->mode &= ~PKT_ALIAS_RESET_ON_ADDR_CHANGE;
		} else if (n->mode & PKT_ALIAS_REVERSE) {
			FUNC3(" reverse");
			n->mode &= ~PKT_ALIAS_REVERSE;
		} else if (n->mode & PKT_ALIAS_PROXY_ONLY) {
			FUNC3(" proxy_only");
			n->mode &= ~PKT_ALIAS_PROXY_ONLY;
		}
	}
	/* Print all the redirect's data configuration. */
	for (cnt = 0; cnt < n->redir_cnt; cnt++) {
		t = (struct nat44_cfg_redir *)&buf[off];
		off += sizeof(struct nat44_cfg_redir);
		switch (t->mode) {
		case REDIR_ADDR:
			FUNC3(" redirect_addr");
			if (t->spool_cnt == 0)
				FUNC3(" %s", FUNC2(t->laddr));
			else
				for (i = 0; i < t->spool_cnt; i++) {
					s = (struct nat44_cfg_spool *)&buf[off];
					if (i)
						FUNC3(",");
					else
						FUNC3(" ");
					FUNC3("%s", FUNC2(s->addr));
					off += sizeof(struct nat44_cfg_spool);
				}
			FUNC3(" %s", FUNC2(t->paddr));
			break;
		case REDIR_PORT:
			p = FUNC1(t->proto);
			FUNC3(" redirect_port %s ", p->p_name);
			if (!t->spool_cnt) {
				FUNC3("%s:%u", FUNC2(t->laddr), t->lport);
				if (t->pport_cnt > 1)
					FUNC3("-%u", t->lport +
					    t->pport_cnt - 1);
			} else
				for (i=0; i < t->spool_cnt; i++) {
					s = (struct nat44_cfg_spool *)&buf[off];
					if (i)
						FUNC3(",");
					FUNC3("%s:%u", FUNC2(s->addr),
					    s->port);
					off += sizeof(struct nat44_cfg_spool);
				}

			FUNC3(" ");
			if (t->paddr.s_addr)
				FUNC3("%s:", FUNC2(t->paddr));
			FUNC3("%u", t->pport);
			if (!t->spool_cnt && t->pport_cnt > 1)
				FUNC3("-%u", t->pport + t->pport_cnt - 1);

			if (t->raddr.s_addr) {
				FUNC3(" %s", FUNC2(t->raddr));
				if (t->rport) {
					FUNC3(":%u", t->rport);
					if (!t->spool_cnt && t->rport_cnt > 1)
						FUNC3("-%u", t->rport +
						    t->rport_cnt - 1);
				}
			}
			break;
		case REDIR_PROTO:
			p = FUNC1(t->proto);
			FUNC3(" redirect_proto %s %s", p->p_name,
			    FUNC2(t->laddr));
			if (t->paddr.s_addr != 0) {
				FUNC3(" %s", FUNC2(t->paddr));
				if (t->raddr.s_addr)
					FUNC3(" %s", FUNC2(t->raddr));
			}
			break;
		default:
			FUNC0(EX_DATAERR, "unknown redir mode");
			break;
		}
	}
	FUNC3("\n");
}