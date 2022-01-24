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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct xid_map_entry {int ipver; scalar_t__ xid; scalar_t__ proc; scalar_t__ vers; int /*<<< orphan*/  client; int /*<<< orphan*/  server; } ;
struct sunrpc_msg {int /*<<< orphan*/  rm_xid; } ;
struct ip6_hdr {int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; } ;
struct ip {int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_src; } ;

/* Variables and functions */
 int FUNC0 (struct ip const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int XIDMAPSIZE ; 
 struct xid_map_entry* xid_map ; 
 int xid_map_hint ; 

__attribute__((used)) static int
FUNC3(const struct sunrpc_msg *rp, const u_char *bp, uint32_t *proc,
	     uint32_t *vers)
{
	int i;
	struct xid_map_entry *xmep;
	uint32_t xid;
	const struct ip *ip = (const struct ip *)bp;
	const struct ip6_hdr *ip6 = (const struct ip6_hdr *)bp;
	int cmp;

	FUNC2(&xid, &rp->rm_xid, sizeof(xmep->xid));
	/* Start searching from where we last left off */
	i = xid_map_hint;
	do {
		xmep = &xid_map[i];
		cmp = 1;
		if (xmep->ipver != FUNC0(ip) || xmep->xid != xid)
			goto nextitem;
		switch (xmep->ipver) {
		case 4:
			if (FUNC1(&ip->ip_src, &xmep->server,
				   sizeof(ip->ip_src)) != 0 ||
			    FUNC1(&ip->ip_dst, &xmep->client,
				   sizeof(ip->ip_dst)) != 0) {
				cmp = 0;
			}
			break;
		case 6:
			if (FUNC1(&ip6->ip6_src, &xmep->server,
				   sizeof(ip6->ip6_src)) != 0 ||
			    FUNC1(&ip6->ip6_dst, &xmep->client,
				   sizeof(ip6->ip6_dst)) != 0) {
				cmp = 0;
			}
			break;
		default:
			cmp = 0;
			break;
		}
		if (cmp) {
			/* match */
			xid_map_hint = i;
			*proc = xmep->proc;
			*vers = xmep->vers;
			return 0;
		}
	nextitem:
		if (++i >= XIDMAPSIZE)
			i = 0;
	} while (i != xid_map_hint);

	/* search failed */
	return (-1);
}