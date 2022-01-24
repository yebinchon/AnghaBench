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
typedef  int /*<<< orphan*/  u_char ;
struct ip6_hdr {int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; } ;
struct ip {int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_src; } ;
typedef  int /*<<< orphan*/  srcaddr ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  dstaddr ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int FUNC0 (struct ip const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
              const u_char *bp, const char *s, const char *d)
{
	const struct ip *ip;
	const struct ip6_hdr *ip6;
	char srcaddr[INET6_ADDRSTRLEN], dstaddr[INET6_ADDRSTRLEN];

	srcaddr[0] = dstaddr[0] = '\0';
	switch (FUNC0((const struct ip *)bp)) {
	case 4:
		ip = (const struct ip *)bp;
		FUNC4(srcaddr, FUNC3(ndo, &ip->ip_src), sizeof(srcaddr));
		FUNC4(dstaddr, FUNC3(ndo, &ip->ip_dst), sizeof(dstaddr));
		break;
	case 6:
		ip6 = (const struct ip6_hdr *)bp;
		FUNC4(srcaddr, FUNC2(ndo, &ip6->ip6_src),
		    sizeof(srcaddr));
		FUNC4(dstaddr, FUNC2(ndo, &ip6->ip6_dst),
		    sizeof(dstaddr));
		break;
	default:
		FUNC4(srcaddr, "?", sizeof(srcaddr));
		FUNC4(dstaddr, "?", sizeof(dstaddr));
		break;
	}

	FUNC1((ndo, "%s.%s > %s.%s: ", srcaddr, s, dstaddr, d));
}