#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct protoent {int /*<<< orphan*/  p_name; } ;
struct in_addr {void* s_addr; } ;
struct format_opts {scalar_t__ pcwidth; scalar_t__ bcwidth; int /*<<< orphan*/  tstate; } ;
struct cmdline_opts {scalar_t__ verbose; } ;
struct buf_pr {int dummy; } ;
typedef  int /*<<< orphan*/  rulenum ;
struct TYPE_4__ {int addr_type; char* src_port; char* dst_port; int /*<<< orphan*/  dst_ip6; int /*<<< orphan*/  src_ip6; int /*<<< orphan*/  dst_ip; int /*<<< orphan*/  src_ip; int /*<<< orphan*/  proto; } ;
struct TYPE_5__ {scalar_t__ expire; int dyn_type; scalar_t__ kidx; int state; int ack_fwd; char* ack_rev; TYPE_1__ id; int /*<<< orphan*/  count; int /*<<< orphan*/  bcnt; int /*<<< orphan*/  pcnt; int /*<<< orphan*/  rule; } ;
typedef  TYPE_2__ ipfw_dyn_rule ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int BOTH_FIN ; 
 int BOTH_SYN ; 
 int INET6_ADDRSTRLEN ; 
 int IPFW_DYN_ORPHANED ; 
 int /*<<< orphan*/  IPFW_TLV_STATE_NAME ; 
#define  O_KEEP_STATE 130 
#define  O_LIMIT 129 
#define  O_LIMIT_PARENT 128 
 int TH_FIN ; 
 int TH_SYN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buf_pr*,char*,...) ; 
 struct protoent* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct in_addr) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buf_pr*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(struct cmdline_opts *co, struct format_opts *fo,
    struct buf_pr *bp, ipfw_dyn_rule *d)
{
	struct protoent *pe;
	struct in_addr a;
	uint16_t rulenum;
	char buf[INET6_ADDRSTRLEN];

	if (d->expire == 0 && d->dyn_type != O_LIMIT_PARENT)
		return;

	FUNC0(&d->rule, &rulenum, sizeof(rulenum));
	FUNC1(bp, "%05d", rulenum);
	if (fo->pcwidth > 0 || fo->bcwidth > 0) {
		FUNC1(bp, " ");
		FUNC7(bp, &d->pcnt, fo->pcwidth);
		FUNC7(bp, &d->bcnt, fo->bcwidth);
		FUNC1(bp, "(%ds)", d->expire);
	}
	switch (d->dyn_type) {
	case O_LIMIT_PARENT:
		FUNC1(bp, " PARENT %d", d->count);
		break;
	case O_LIMIT:
		FUNC1(bp, " LIMIT");
		break;
	case O_KEEP_STATE: /* bidir, no mask */
		FUNC1(bp, " STATE");
		break;
	}

	if ((pe = FUNC2(d->id.proto)) != NULL)
		FUNC1(bp, " %s", pe->p_name);
	else
		FUNC1(bp, " proto %u", d->id.proto);

	if (d->id.addr_type == 4) {
		a.s_addr = FUNC3(d->id.src_ip);
		FUNC1(bp, " %s %d", FUNC4(a), d->id.src_port);

		a.s_addr = FUNC3(d->id.dst_ip);
		FUNC1(bp, " <-> %s %d", FUNC4(a), d->id.dst_port);
	} else if (d->id.addr_type == 6) {
		FUNC1(bp, " %s %d", FUNC5(AF_INET6, &d->id.src_ip6, buf,
		    sizeof(buf)), d->id.src_port);
		FUNC1(bp, " <-> %s %d", FUNC5(AF_INET6, &d->id.dst_ip6,
		    buf, sizeof(buf)), d->id.dst_port);
	} else
		FUNC1(bp, " UNKNOWN <-> UNKNOWN");
	if (d->kidx != 0)
		FUNC1(bp, " :%s", FUNC6(fo->tstate,
		    d->kidx, IPFW_TLV_STATE_NAME));

#define	BOTH_SYN	(TH_SYN | (TH_SYN << 8))
#define	BOTH_FIN	(TH_FIN | (TH_FIN << 8))
	if (co->verbose) {
		FUNC1(bp, " state 0x%08x%s", d->state,
		    d->state ? " ": ",");
		if (d->state & IPFW_DYN_ORPHANED)
			FUNC1(bp, "ORPHANED,");
		if ((d->state & BOTH_SYN) == BOTH_SYN)
			FUNC1(bp, "BOTH_SYN,");
		else {
			if (d->state & TH_SYN)
				FUNC1(bp, "F_SYN,");
			if (d->state & (TH_SYN << 8))
				FUNC1(bp, "R_SYN,");
		}
		if ((d->state & BOTH_FIN) == BOTH_FIN)
			FUNC1(bp, "BOTH_FIN,");
		else {
			if (d->state & TH_FIN)
				FUNC1(bp, "F_FIN,");
			if (d->state & (TH_FIN << 8))
				FUNC1(bp, "R_FIN,");
		}
		FUNC1(bp, " f_ack 0x%x, r_ack 0x%x", d->ack_fwd,
		    d->ack_rev);
	}
}