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
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int const NLPID_IP ; 
 int PT_IEEE_802_2 ; 
 int PT_NLPID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*) ; 
 scalar_t__ FUNC6 (int const*,int const*,int) ; 

__attribute__((used)) static int
FUNC7(netdissect_options *ndo,
	       const u_char * p, int l)
{
	int pt, pl, al, num;
	const u_char *endp = p + l;
	static const u_char prot_ipv6[] = {
		0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00, 0x86, 0xdd
	};

	FUNC3(*p, 4);
	if (p + 4 > endp)
		goto trunc;
	num = FUNC1(p);
	p += 4;

	while (p < endp && num >= 0) {
		FUNC3(*p, 2);
		if (p + 2 > endp)
			goto trunc;
		pt = p[0];		/* type of "protocol" field */
		pl = p[1];		/* length of "protocol" field */
		p += 2;

		FUNC3(p[pl], 2);
		if (p + pl + 2 > endp)
			goto trunc;
		al = FUNC0(&p[pl]);	/* address length */

		if (pt == PT_NLPID && pl == 1 && *p == NLPID_IP && al == 4) {
			/*
			 * IPv4: protocol type = NLPID, protocol length = 1
			 * (1-byte NLPID), protocol = 0xcc (NLPID for IPv4),
			 * address length = 4
			 */
			p += 3;

			FUNC3(*p, 4);
			if (p + 4 > endp)
				goto trunc;
			FUNC2((ndo, "IPv4 (%u) %s", num, FUNC5(ndo, p)));
			p += 4;
		}
		else if (pt == PT_IEEE_802_2 && pl == 8 &&
		    FUNC6(p, prot_ipv6, 8) == 0 && al == 16) {
			/*
			 * IPv6: protocol type = IEEE 802.2 header,
			 * protocol length = 8 (size of LLC+SNAP header),
			 * protocol = LLC+SNAP header with the IPv6
			 * Ethertype, address length = 16
			 */
			p += 10;
			FUNC3(*p, al);
			if (p + al > endp)
				goto trunc;

			FUNC2((ndo, "IPv6 (%u) %s", num, FUNC4(ndo, p)));
			p += al;
		}
		else {
			/*
			 * Generic case: just print raw data
			 */
			FUNC3(*p, pl);
			if (p + pl > endp)
				goto trunc;
			FUNC2((ndo, "pt=0x%02x, pl=%d, pb=", *(p - 2), pl));
			while (pl-- > 0)
				FUNC2((ndo, " %02x", *p++));
			FUNC3(*p, 2);
			if (p + 2 > endp)
				goto trunc;
			al = (*p << 8) + *(p + 1);
			FUNC2((ndo, ", al=%d, a=", al));
			p += 2;
			FUNC3(*p, al);
			if (p + al > endp)
				goto trunc;
			while (al-- > 0)
				FUNC2((ndo, " %02x", *p++));
		}
		num--;
		if (num)
			FUNC2((ndo, " "));
	}

	return 0;

trunc:
	return -1;
}