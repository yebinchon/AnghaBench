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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  t ;
struct in6_addr {int dummy; } ;
struct icmp6_nodeinfo {int ni_code; int ni_flags; } ;
typedef  int /*<<< orphan*/  ntop_buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int F_VERBOSE ; 
#define  ICMP6_NI_REFUSED 129 
#define  ICMP6_NI_UNKNOWN 128 
 int INET6_ADDRSTRLEN ; 
 int NI_NODEADDR_FLAG_TRUNCATE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int options ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC6(struct icmp6_nodeinfo *ni, int nilen)
	/* ni->qtype must be NODEADDR */
{
	u_char *cp = (u_char *)(ni + 1);
	char ntop_buf[INET6_ADDRSTRLEN];
	int withttl = 0;

	nilen -= sizeof(struct icmp6_nodeinfo);

	if (options & F_VERBOSE) {
		switch (ni->ni_code) {
		case ICMP6_NI_REFUSED:
			(void)FUNC3("refused");
			break;
		case ICMP6_NI_UNKNOWN:
			(void)FUNC3("unknown qtype");
			break;
		}
		if (ni->ni_flags & NI_NODEADDR_FLAG_TRUNCATE)
			(void)FUNC3(" truncated");
	}
	FUNC4('\n');
	if (nilen <= 0)
		FUNC3("  no address\n");

	/*
	 * In icmp-name-lookups 05 and later, TTL of each returned address
	 * is contained in the resposne. We try to detect the version
	 * by the length of the data, but note that the detection algorithm
	 * is incomplete. We assume the latest draft by default.
	 */
	if (nilen % (sizeof(u_int32_t) + sizeof(struct in6_addr)) == 0)
		withttl = 1;
	while (nilen > 0) {
		u_int32_t ttl = 0;

		if (withttl) {
			uint32_t t;

			FUNC1(&t, cp, sizeof(t));
			ttl = (u_int32_t)FUNC2(t);
			cp += sizeof(u_int32_t);
			nilen -= sizeof(u_int32_t);
		}

		if (FUNC0(AF_INET6, cp, ntop_buf, sizeof(ntop_buf)) ==
		    NULL)
			FUNC5(ntop_buf, "?", sizeof(ntop_buf));
		FUNC3("  %s", ntop_buf);
		if (withttl) {
			if (ttl == 0xffffffff) {
				/*
				 * XXX: can this convention be applied to all
				 * type of TTL (i.e. non-ND TTL)?
				 */
				FUNC3("(TTL=infty)");
			}
			else
				FUNC3("(TTL=%u)", ttl);
		}
		FUNC4('\n');

		nilen -= sizeof(struct in6_addr);
		cp += sizeof(struct in6_addr);
	}
}