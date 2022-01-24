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
typedef  int u_char ;
struct ip {int const ip_dst; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int IPOPT_EOL ; 
#define  IPOPT_LSRR 129 
 int IPOPT_NOP ; 
#define  IPOPT_SSRR 128 
 int FUNC0 (struct ip const*) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*,int) ; 

__attribute__((used)) static uint32_t
FUNC4(netdissect_options *ndo,
           const struct ip *ip)
{
	int length;
	int len;
	const u_char *cp;
	uint32_t retval;

	cp = (const u_char *)(ip + 1);
	length = (FUNC0(ip) << 2) - sizeof(struct ip);

	for (; length > 0; cp += len, length -= len) {
		int tt;

		FUNC1(*cp);
		tt = *cp;
		if (tt == IPOPT_EOL)
			break;
		else if (tt == IPOPT_NOP)
			len = 1;
		else {
			FUNC1(cp[1]);
			len = cp[1];
			if (len < 2)
				break;
		}
		FUNC2(*cp, len);
		switch (tt) {

		case IPOPT_SSRR:
		case IPOPT_LSRR:
			if (len < 7)
				break;
			FUNC3(&retval, cp + len - 4, 4);
			return retval;
		}
	}
trunc:
	FUNC3(&retval, &ip->ip_dst, sizeof(uint32_t));
	return retval;
}