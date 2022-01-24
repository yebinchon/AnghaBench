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
struct ip6_hdr {scalar_t__ ip6_nxt; int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; } ;
struct ip {scalar_t__ ip_p; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_src; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ IPPROTO_UDP ; 
 int FUNC0 (struct ip const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo, const struct ip *ip, int sport, int dport)
{
	const struct ip6_hdr *ip6;

	if (FUNC0(ip) == 6)
		ip6 = (const struct ip6_hdr *)ip;
	else
		ip6 = NULL;

	if (ip6) {
		if (ip6->ip6_nxt == IPPROTO_UDP) {
			if (sport == -1) {
				FUNC1((ndo, "%s > %s: ",
					FUNC2(ndo, &ip6->ip6_src),
					FUNC2(ndo, &ip6->ip6_dst)));
			} else {
				FUNC1((ndo, "%s.%s > %s.%s: ",
					FUNC2(ndo, &ip6->ip6_src),
					FUNC4(ndo, sport),
					FUNC2(ndo, &ip6->ip6_dst),
					FUNC4(ndo, dport)));
			}
		} else {
			if (sport != -1) {
				FUNC1((ndo, "%s > %s: ",
					FUNC4(ndo, sport),
					FUNC4(ndo, dport)));
			}
		}
	} else {
		if (ip->ip_p == IPPROTO_UDP) {
			if (sport == -1) {
				FUNC1((ndo, "%s > %s: ",
					FUNC3(ndo, &ip->ip_src),
					FUNC3(ndo, &ip->ip_dst)));
			} else {
				FUNC1((ndo, "%s.%s > %s.%s: ",
					FUNC3(ndo, &ip->ip_src),
					FUNC4(ndo, sport),
					FUNC3(ndo, &ip->ip_dst),
					FUNC4(ndo, dport)));
			}
		} else {
			if (sport != -1) {
				FUNC1((ndo, "%s > %s: ",
					FUNC4(ndo, sport),
					FUNC4(ndo, dport)));
			}
		}
	}
}