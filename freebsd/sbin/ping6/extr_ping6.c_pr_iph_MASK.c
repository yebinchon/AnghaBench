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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct ip6_hdr {int ip6_flow; int ip6_vfc; int ip6_nxt; int ip6_hlim; int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; int /*<<< orphan*/  ip6_plen; } ;
typedef  int /*<<< orphan*/  ntop_buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 int IPV6_FLOWLABEL_MASK ; 
 int IPV6_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct ip6_hdr *ip6)
{
	u_int32_t flow = ip6->ip6_flow & IPV6_FLOWLABEL_MASK;
	u_int8_t tc;
	char ntop_buf[INET6_ADDRSTRLEN];

	tc = *(&ip6->ip6_vfc + 1); /* XXX */
	tc = (tc >> 4) & 0x0f;
	tc |= (ip6->ip6_vfc << 4);

	FUNC3("Vr TC  Flow Plen Nxt Hlim\n");
	FUNC3(" %1x %02x %05x %04x  %02x   %02x\n",
	    (ip6->ip6_vfc & IPV6_VERSION_MASK) >> 4, tc, (u_int32_t)FUNC1(flow),
	    FUNC2(ip6->ip6_plen), ip6->ip6_nxt, ip6->ip6_hlim);
	if (!FUNC0(AF_INET6, &ip6->ip6_src, ntop_buf, sizeof(ntop_buf)))
		FUNC4(ntop_buf, "?", sizeof(ntop_buf));
	FUNC3("%s->", ntop_buf);
	if (!FUNC0(AF_INET6, &ip6->ip6_dst, ntop_buf, sizeof(ntop_buf)))
		FUNC4(ntop_buf, "?", sizeof(ntop_buf));
	FUNC3("%s\n", ntop_buf);
}