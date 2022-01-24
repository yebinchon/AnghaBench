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
typedef  int /*<<< orphan*/  u_char ;
struct xid_map_entry {int ipver; void* vers; void* proc; int /*<<< orphan*/  server; int /*<<< orphan*/  client; int /*<<< orphan*/  xid; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_vers; int /*<<< orphan*/  cb_proc; } ;
struct sunrpc_msg {TYPE_1__ rm_call; int /*<<< orphan*/  rm_xid; } ;
struct ip6_hdr {int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; } ;
struct ip {int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_src; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ip const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t XIDMAPSIZE ; 
 struct xid_map_entry* xid_map ; 
 size_t xid_map_next ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
              const struct sunrpc_msg *rp, const u_char *bp)
{
	const struct ip *ip = NULL;
	const struct ip6_hdr *ip6 = NULL;
	struct xid_map_entry *xmep;

	if (!FUNC2(rp->rm_call.cb_proc))
		return (0);
	switch (FUNC1((const struct ip *)bp)) {
	case 4:
		ip = (const struct ip *)bp;
		break;
	case 6:
		ip6 = (const struct ip6_hdr *)bp;
		break;
	default:
		return (1);
	}

	xmep = &xid_map[xid_map_next];

	if (++xid_map_next >= XIDMAPSIZE)
		xid_map_next = 0;

	FUNC3(&xmep->xid, &rp->rm_xid, sizeof(xmep->xid));
	if (ip) {
		xmep->ipver = 4;
		FUNC3(&xmep->client, &ip->ip_src, sizeof(ip->ip_src));
		FUNC3(&xmep->server, &ip->ip_dst, sizeof(ip->ip_dst));
	}
	else if (ip6) {
		xmep->ipver = 6;
		FUNC3(&xmep->client, &ip6->ip6_src, sizeof(ip6->ip6_src));
		FUNC3(&xmep->server, &ip6->ip6_dst, sizeof(ip6->ip6_dst));
	}
	xmep->proc = FUNC0(&rp->rm_call.cb_proc);
	xmep->vers = FUNC0(&rp->rm_call.cb_vers);
	return (1);
}