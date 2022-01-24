#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct protoent {char* p_name; } ;
struct TYPE_11__ {int /*<<< orphan*/ * proxy_port; } ;
struct TYPE_10__ {scalar_t__ port; int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {int limit; int seconds; } ;
struct TYPE_8__ {int /*<<< orphan*/ * gid; scalar_t__ op; } ;
struct TYPE_7__ {int /*<<< orphan*/ * uid; scalar_t__ op; } ;
struct pf_rule {int nr; int action; int rule_flag; int return_ttl; int return_icmp; int return_icmp6; int af; scalar_t__ direction; int log; int logif; char* ifname; scalar_t__ rt; int proto; scalar_t__ keep_state; int type; int code; int tos; scalar_t__ prio; int scrub_flags; int* set_prio; double prob; int max_states; int max_src_nodes; int max_src_states; int* timeout; int max_src_conn; char* overload_tblname; int flush; int min_ttl; int max_mss; int set_tos; char* label; char* qname; char* pqname; char* tagname; char* match_tagname; int rtableid; TYPE_5__ rpool; TYPE_4__ divert; scalar_t__ match_tag_not; scalar_t__ allow_opts; TYPE_3__ max_src_conn_rate; scalar_t__ flagset; scalar_t__ flags; TYPE_2__ gid; TYPE_1__ uid; int /*<<< orphan*/  dst; int /*<<< orphan*/  os_fingerprint; int /*<<< orphan*/  src; scalar_t__ ifnot; scalar_t__ quick; scalar_t__ natpass; } ;
struct icmptypeent {char* name; } ;
struct icmpcodeent {char* name; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_12__ {char* name; int timeout; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  GID_MAX ; 
 int IPPROTO_TCP ; 
 int PFRULE_FRAGMENT ; 
 int PFRULE_IFBOUND ; 
 int PFRULE_NODF ; 
 int PFRULE_NOSYNC ; 
 int PFRULE_RANDOMID ; 
 int PFRULE_REASSEMBLE_TCP ; 
 int PFRULE_RETURN ; 
 int PFRULE_RETURNICMP ; 
 int PFRULE_RETURNRST ; 
 int PFRULE_RULESRCTRACK ; 
 int PFRULE_SET_TOS ; 
 int PFRULE_SRCTRACK ; 
 int PFRULE_STATESLOPPY ; 
 int PFSTATE_SETMASK ; 
 int PFSTATE_SETPRIO ; 
 int PFTM_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 size_t PF_BINAT ; 
 size_t PF_DROP ; 
 scalar_t__ PF_DUPTO ; 
 int PF_FLUSH_GLOBAL ; 
 scalar_t__ PF_IN ; 
 int PF_LOG ; 
 int PF_LOG_ALL ; 
 int PF_LOG_SOCKET_LOOKUP ; 
 size_t PF_NAT ; 
 int PF_NORDR ; 
 scalar_t__ PF_OUT ; 
 size_t PF_PASS ; 
 scalar_t__ PF_PRIO_ZERO ; 
 size_t PF_RDR ; 
 scalar_t__ PF_REPLYTO ; 
 scalar_t__ PF_ROUTETO ; 
 size_t PF_SCRUB ; 
 scalar_t__ PF_STATE_MODULATE ; 
 scalar_t__ PF_STATE_NORMAL ; 
 scalar_t__ PF_STATE_SYNPROXY ; 
 int /*<<< orphan*/  UID_MAX ; 
 double UINT_MAX ; 
 struct icmpcodeent* FUNC1 (int,int,int) ; 
 struct icmptypeent* FUNC2 (int,int) ; 
 struct protoent* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (scalar_t__) ; 
 TYPE_6__* pf_timeouts ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,double) ; 
 int FUNC12 (char*) ; 

void
FUNC13(struct pf_rule *r, const char *anchor_call, int verbose, int numeric)
{
	static const char *actiontypes[] = { "pass", "block", "scrub",
	    "no scrub", "nat", "no nat", "binat", "no binat", "rdr", "no rdr" };
	static const char *anchortypes[] = { "anchor", "anchor", "anchor",
	    "anchor", "nat-anchor", "nat-anchor", "binat-anchor",
	    "binat-anchor", "rdr-anchor", "rdr-anchor" };
	int	i, opts;

	if (verbose)
		FUNC10("@%d ", r->nr);
	if (r->action > PF_NORDR)
		FUNC10("action(%d)", r->action);
	else if (anchor_call[0]) {
		if (anchor_call[0] == '_') {
			FUNC10("%s", anchortypes[r->action]);
		} else
			FUNC10("%s \"%s\"", anchortypes[r->action],
			    anchor_call);
	} else {
		FUNC10("%s", actiontypes[r->action]);
		if (r->natpass)
			FUNC10(" pass");
	}
	if (r->action == PF_DROP) {
		if (r->rule_flag & PFRULE_RETURN)
			FUNC10(" return");
		else if (r->rule_flag & PFRULE_RETURNRST) {
			if (!r->return_ttl)
				FUNC10(" return-rst");
			else
				FUNC10(" return-rst(ttl %d)", r->return_ttl);
		} else if (r->rule_flag & PFRULE_RETURNICMP) {
			const struct icmpcodeent	*ic, *ic6;

			ic = FUNC1(r->return_icmp >> 8,
			    r->return_icmp & 255, AF_INET);
			ic6 = FUNC1(r->return_icmp6 >> 8,
			    r->return_icmp6 & 255, AF_INET6);

			switch (r->af) {
			case AF_INET:
				FUNC10(" return-icmp");
				if (ic == NULL)
					FUNC10("(%u)", r->return_icmp & 255);
				else
					FUNC10("(%s)", ic->name);
				break;
			case AF_INET6:
				FUNC10(" return-icmp6");
				if (ic6 == NULL)
					FUNC10("(%u)", r->return_icmp6 & 255);
				else
					FUNC10("(%s)", ic6->name);
				break;
			default:
				FUNC10(" return-icmp");
				if (ic == NULL)
					FUNC10("(%u, ", r->return_icmp & 255);
				else
					FUNC10("(%s, ", ic->name);
				if (ic6 == NULL)
					FUNC10("%u)", r->return_icmp6 & 255);
				else
					FUNC10("%s)", ic6->name);
				break;
			}
		} else
			FUNC10(" drop");
	}
	if (r->direction == PF_IN)
		FUNC10(" in");
	else if (r->direction == PF_OUT)
		FUNC10(" out");
	if (r->log) {
		FUNC10(" log");
		if (r->log & ~PF_LOG || r->logif) {
			int count = 0;

			FUNC10(" (");
			if (r->log & PF_LOG_ALL)
				FUNC10("%sall", count++ ? ", " : "");
			if (r->log & PF_LOG_SOCKET_LOOKUP)
				FUNC10("%suser", count++ ? ", " : "");
			if (r->logif)
				FUNC10("%sto pflog%u", count++ ? ", " : "",
				    r->logif);
			FUNC10(")");
		}
	}
	if (r->quick)
		FUNC10(" quick");
	if (r->ifname[0]) {
		if (r->ifnot)
			FUNC10(" on ! %s", r->ifname);
		else
			FUNC10(" on %s", r->ifname);
	}
	if (r->rt) {
		if (r->rt == PF_ROUTETO)
			FUNC10(" route-to");
		else if (r->rt == PF_REPLYTO)
			FUNC10(" reply-to");
		else if (r->rt == PF_DUPTO)
			FUNC10(" dup-to");
		FUNC10(" ");
		FUNC8(&r->rpool, 0, 0, r->af, PF_PASS);
	}
	if (r->af) {
		if (r->af == AF_INET)
			FUNC10(" inet");
		else
			FUNC10(" inet6");
	}
	if (r->proto) {
		struct protoent	*p;

		if ((p = FUNC3(r->proto)) != NULL)
			FUNC10(" proto %s", p->p_name);
		else
			FUNC10(" proto %u", r->proto);
	}
	FUNC7(&r->src, r->os_fingerprint, &r->dst, r->af, r->proto,
	    verbose, numeric);
	if (r->uid.op)
		FUNC9(r->uid.op, r->uid.uid[0], r->uid.uid[1], "user",
		    UID_MAX);
	if (r->gid.op)
		FUNC9(r->gid.op, r->gid.gid[0], r->gid.gid[1], "group",
		    GID_MAX);
	if (r->flags || r->flagset) {
		FUNC10(" flags ");
		FUNC6(r->flags);
		FUNC10("/");
		FUNC6(r->flagset);
	} else if (r->action == PF_PASS &&
	    (!r->proto || r->proto == IPPROTO_TCP) &&
	    !(r->rule_flag & PFRULE_FRAGMENT) &&
	    !anchor_call[0] && r->keep_state)
		FUNC10(" flags any");
	if (r->type) {
		const struct icmptypeent	*it;

		it = FUNC2(r->type-1, r->af);
		if (r->af != AF_INET6)
			FUNC10(" icmp-type");
		else
			FUNC10(" icmp6-type");
		if (it != NULL)
			FUNC10(" %s", it->name);
		else
			FUNC10(" %u", r->type-1);
		if (r->code) {
			const struct icmpcodeent	*ic;

			ic = FUNC1(r->type-1, r->code-1, r->af);
			if (ic != NULL)
				FUNC10(" code %s", ic->name);
			else
				FUNC10(" code %u", r->code-1);
		}
	}
	if (r->tos)
		FUNC10(" tos 0x%2.2x", r->tos);
	if (r->prio)
		FUNC10(" prio %u", r->prio == PF_PRIO_ZERO ? 0 : r->prio);
	if (r->scrub_flags & PFSTATE_SETMASK) {
		char *comma = "";
		FUNC10(" set (");
		if (r->scrub_flags & PFSTATE_SETPRIO) {
			if (r->set_prio[0] == r->set_prio[1])
				FUNC10("%s prio %u", comma, r->set_prio[0]);
			else
				FUNC10("%s prio(%u, %u)", comma, r->set_prio[0],
				    r->set_prio[1]);
			comma = ",";
		}
		FUNC10(" )");
	}
	if (!r->keep_state && r->action == PF_PASS && !anchor_call[0])
		FUNC10(" no state");
	else if (r->keep_state == PF_STATE_NORMAL)
		FUNC10(" keep state");
	else if (r->keep_state == PF_STATE_MODULATE)
		FUNC10(" modulate state");
	else if (r->keep_state == PF_STATE_SYNPROXY)
		FUNC10(" synproxy state");
	if (r->prob) {
		char	buf[20];

		FUNC11(buf, sizeof(buf), "%f", r->prob*100.0/(UINT_MAX+1.0));
		for (i = FUNC12(buf)-1; i > 0; i--) {
			if (buf[i] == '0')
				buf[i] = '\0';
			else {
				if (buf[i] == '.')
					buf[i] = '\0';
				break;
			}
		}
		FUNC10(" probability %s%%", buf);
	}
	opts = 0;
	if (r->max_states || r->max_src_nodes || r->max_src_states)
		opts = 1;
	if (r->rule_flag & PFRULE_NOSYNC)
		opts = 1;
	if (r->rule_flag & PFRULE_SRCTRACK)
		opts = 1;
	if (r->rule_flag & PFRULE_IFBOUND)
		opts = 1;
	if (r->rule_flag & PFRULE_STATESLOPPY)
		opts = 1;
	for (i = 0; !opts && i < PFTM_MAX; ++i)
		if (r->timeout[i])
			opts = 1;
	if (opts) {
		FUNC10(" (");
		if (r->max_states) {
			FUNC10("max %u", r->max_states);
			opts = 0;
		}
		if (r->rule_flag & PFRULE_NOSYNC) {
			if (!opts)
				FUNC10(", ");
			FUNC10("no-sync");
			opts = 0;
		}
		if (r->rule_flag & PFRULE_SRCTRACK) {
			if (!opts)
				FUNC10(", ");
			FUNC10("source-track");
			if (r->rule_flag & PFRULE_RULESRCTRACK)
				FUNC10(" rule");
			else
				FUNC10(" global");
			opts = 0;
		}
		if (r->max_src_states) {
			if (!opts)
				FUNC10(", ");
			FUNC10("max-src-states %u", r->max_src_states);
			opts = 0;
		}
		if (r->max_src_conn) {
			if (!opts)
				FUNC10(", ");
			FUNC10("max-src-conn %u", r->max_src_conn);
			opts = 0;
		}
		if (r->max_src_conn_rate.limit) {
			if (!opts)
				FUNC10(", ");
			FUNC10("max-src-conn-rate %u/%u",
			    r->max_src_conn_rate.limit,
			    r->max_src_conn_rate.seconds);
			opts = 0;
		}
		if (r->max_src_nodes) {
			if (!opts)
				FUNC10(", ");
			FUNC10("max-src-nodes %u", r->max_src_nodes);
			opts = 0;
		}
		if (r->overload_tblname[0]) {
			if (!opts)
				FUNC10(", ");
			FUNC10("overload <%s>", r->overload_tblname);
			if (r->flush)
				FUNC10(" flush");
			if (r->flush & PF_FLUSH_GLOBAL)
				FUNC10(" global");
		}
		if (r->rule_flag & PFRULE_IFBOUND) {
			if (!opts)
				FUNC10(", ");
			FUNC10("if-bound");
			opts = 0;
		}
		if (r->rule_flag & PFRULE_STATESLOPPY) {
			if (!opts)
				FUNC10(", ");
			FUNC10("sloppy");
			opts = 0;
		}
		for (i = 0; i < PFTM_MAX; ++i)
			if (r->timeout[i]) {
				int j;

				if (!opts)
					FUNC10(", ");
				opts = 0;
				for (j = 0; pf_timeouts[j].name != NULL;
				    ++j)
					if (pf_timeouts[j].timeout == i)
						break;
				FUNC10("%s %u", pf_timeouts[j].name == NULL ?
				    "inv.timeout" : pf_timeouts[j].name,
				    r->timeout[i]);
			}
		FUNC10(")");
	}
	if (r->rule_flag & PFRULE_FRAGMENT)
		FUNC10(" fragment");
	if (r->rule_flag & PFRULE_NODF)
		FUNC10(" no-df");
	if (r->rule_flag & PFRULE_RANDOMID)
		FUNC10(" random-id");
	if (r->min_ttl)
		FUNC10(" min-ttl %d", r->min_ttl);
	if (r->max_mss)
		FUNC10(" max-mss %d", r->max_mss);
	if (r->rule_flag & PFRULE_SET_TOS)
		FUNC10(" set-tos 0x%2.2x", r->set_tos);
	if (r->allow_opts)
		FUNC10(" allow-opts");
	if (r->action == PF_SCRUB) {
		if (r->rule_flag & PFRULE_REASSEMBLE_TCP)
			FUNC10(" reassemble tcp");

		FUNC10(" fragment reassemble");
	}
	if (r->label[0])
		FUNC10(" label \"%s\"", r->label);
	if (r->qname[0] && r->pqname[0])
		FUNC10(" queue(%s, %s)", r->qname, r->pqname);
	else if (r->qname[0])
		FUNC10(" queue %s", r->qname);
	if (r->tagname[0])
		FUNC10(" tag %s", r->tagname);
	if (r->match_tagname[0]) {
		if (r->match_tag_not)
			FUNC10(" !");
		FUNC10(" tagged %s", r->match_tagname);
	}
	if (r->rtableid != -1)
		FUNC10(" rtable %u", r->rtableid);
	if (r->divert.port) {
#ifdef __FreeBSD__
		printf(" divert-to %u", ntohs(r->divert.port));
#else
		if (FUNC0(&r->divert.addr, r->af)) {
			FUNC10(" divert-reply");
		} else {
			/* XXX cut&paste from print_addr */
			char buf[48];

			FUNC10(" divert-to ");
			if (FUNC4(r->af, &r->divert.addr, buf,
			    sizeof(buf)) == NULL)
				FUNC10("?");
			else
				FUNC10("%s", buf);
			FUNC10(" port %u", FUNC5(r->divert.port));
		}
#endif
	}
	if (!anchor_call[0] && (r->action == PF_NAT ||
	    r->action == PF_BINAT || r->action == PF_RDR)) {
		FUNC10(" -> ");
		FUNC8(&r->rpool, r->rpool.proxy_port[0],
		    r->rpool.proxy_port[1], r->af, r->action);
	}
}