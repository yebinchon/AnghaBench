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
struct ip6_rthdr {int ip6r_nxt; int ip6r_len; int ip6r_type; int ip6r_segleft; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  ntopbuf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  IPV6_RTHDR_TYPE_0 ; 
 struct in6_addr* FUNC1 (void*,int) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct in6_addr*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 

__attribute__((used)) static void
FUNC8(void *extbuf, size_t bufsize)
{
	struct in6_addr *in6;
	char ntopbuf[INET6_ADDRSTRLEN];
	struct ip6_rthdr *rh = (struct ip6_rthdr *)extbuf;
	int i, segments, origsegs, rthsize, size0, size1;

	/* print fixed part of the header */
	FUNC5("nxt %u, len %u (%d bytes), type %u, ", rh->ip6r_nxt,
	    rh->ip6r_len, (rh->ip6r_len + 1) << 3, rh->ip6r_type);
	if ((segments = FUNC2(extbuf)) >= 0) {
		FUNC5("%d segments, ", segments);
		FUNC5("%d left\n", rh->ip6r_segleft);
	} else {
		FUNC5("segments unknown, ");
		FUNC5("%d left\n", rh->ip6r_segleft);
		return;
	}

	/*
	 * Bounds checking on the ancillary data buffer. When calculating
	 * the number of items to show keep in mind:
	 *	- The size of the cmsg structure
	 *	- The size of one segment (the size of a Type 0 routing header)
	 *	- When dividing add a fudge factor of one in case the
	 *	  dividend is not evenly divisible by the divisor
	 */
	rthsize = (rh->ip6r_len + 1) * 8;
	if (bufsize < (rthsize + FUNC0(0))) {
		origsegs = segments;
		size0 = FUNC3(IPV6_RTHDR_TYPE_0, 0);
		size1 = FUNC3(IPV6_RTHDR_TYPE_0, 1);
		segments -= (rthsize - (bufsize - FUNC0(0))) /
		    (size1 - size0) + 1;
		FUNC7("segments truncated, showing only %d (total=%d)",
		    segments, origsegs);
	}

	for (i = 0; i < segments; i++) {
		in6 = FUNC1(extbuf, i);
		if (in6 == NULL)
			FUNC5("   [%d]<NULL>\n", i);
		else {
			if (!FUNC4(AF_INET6, in6, ntopbuf,
			    sizeof(ntopbuf)))
				FUNC6(ntopbuf, "?", sizeof(ntopbuf));
			FUNC5("   [%d]%s\n", i, ntopbuf);
		}
	}

	return;

}