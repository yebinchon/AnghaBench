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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
struct cksum_vec {scalar_t__ len; int /*<<< orphan*/  const* ptr; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  enum checksum_status { ____Placeholder_checksum_status } checksum_status ;

/* Variables and functions */
 int CORRECT ; 
 int INCORRECT ; 
 int /*<<< orphan*/  IPPROTO_PIM ; 
 int FUNC0 (struct ip const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,scalar_t__) ; 
 int UNVERIFIED ; 
 scalar_t__ FUNC2 (struct cksum_vec*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct ip6_hdr const*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum checksum_status
FUNC4(netdissect_options *ndo, const u_char *bp,
		     const u_char *bp2, u_int len)
{
	const struct ip *ip;
	u_int cksum;

	if (!FUNC1(bp[0], len)) {
		/* We don't have all the data. */
		return (UNVERIFIED);
	}
	ip = (const struct ip *)bp2;
	if (FUNC0(ip) == 4) {
		struct cksum_vec vec[1];

		vec[0].ptr = bp;
		vec[0].len = len;
		cksum = FUNC2(vec, 1);
		return (cksum ? INCORRECT : CORRECT);
	} else if (FUNC0(ip) == 6) {
		const struct ip6_hdr *ip6;

		ip6 = (const struct ip6_hdr *)bp2;
		cksum = FUNC3(ndo, ip6, bp, len, len, IPPROTO_PIM);
		return (cksum ? INCORRECT : CORRECT);
	} else {
		return (UNVERIFIED);
	}
}