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
#define  IP6MOPT_ALTCOA 133 
 unsigned int const IP6MOPT_ALTCOA_MINLEN ; 
#define  IP6MOPT_AUTH 132 
 unsigned int const IP6MOPT_AUTH_MINLEN ; 
 unsigned int const IP6MOPT_MINLEN ; 
#define  IP6MOPT_NONCEID 131 
 unsigned int const IP6MOPT_NONCEID_MINLEN ; 
#define  IP6MOPT_PAD1 130 
#define  IP6MOPT_PADN 129 
#define  IP6MOPT_REFRESH 128 
 unsigned int const IP6MOPT_REFRESH_MINLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*) ; 

__attribute__((used)) static int
FUNC6(netdissect_options *ndo,
                   const u_char *bp, const unsigned len)
{
	unsigned i, optlen;

	for (i = 0; i < len; i += optlen) {
		FUNC2(bp[i]);
		if (bp[i] == IP6MOPT_PAD1)
			optlen = 1;
		else {
			if (i + 1 < len) {
				FUNC2(bp[i + 1]);
				optlen = bp[i + 1] + 2;
			}
			else
				goto trunc;
		}
		if (i + optlen > len)
			goto trunc;
		FUNC2(bp[i + optlen]);

		switch (bp[i]) {
		case IP6MOPT_PAD1:
			FUNC1((ndo, "(pad1)"));
			break;
		case IP6MOPT_PADN:
			if (len - i < IP6MOPT_MINLEN) {
				FUNC1((ndo, "(padn: trunc)"));
				goto trunc;
			}
			FUNC1((ndo, "(padn)"));
			break;
		case IP6MOPT_REFRESH:
			if (len - i < IP6MOPT_REFRESH_MINLEN) {
				FUNC1((ndo, "(refresh: trunc)"));
				goto trunc;
			}
			/* units of 4 secs */
			FUNC4(&bp[i+2]);
			FUNC1((ndo, "(refresh: %u)",
				FUNC0(&bp[i+2]) << 2));
			break;
		case IP6MOPT_ALTCOA:
			if (len - i < IP6MOPT_ALTCOA_MINLEN) {
				FUNC1((ndo, "(altcoa: trunc)"));
				goto trunc;
			}
			FUNC3(&bp[i+2]);
			FUNC1((ndo, "(alt-CoA: %s)", FUNC5(ndo, &bp[i+2])));
			break;
		case IP6MOPT_NONCEID:
			if (len - i < IP6MOPT_NONCEID_MINLEN) {
				FUNC1((ndo, "(ni: trunc)"));
				goto trunc;
			}
			FUNC4(&bp[i+2]);
			FUNC4(&bp[i+4]);
			FUNC1((ndo, "(ni: ho=0x%04x co=0x%04x)",
				FUNC0(&bp[i+2]),
				FUNC0(&bp[i+4])));
			break;
		case IP6MOPT_AUTH:
			if (len - i < IP6MOPT_AUTH_MINLEN) {
				FUNC1((ndo, "(auth: trunc)"));
				goto trunc;
			}
			FUNC1((ndo, "(auth)"));
			break;
		default:
			if (len - i < IP6MOPT_MINLEN) {
				FUNC1((ndo, "(sopt_type %u: trunc)", bp[i]));
				goto trunc;
			}
			FUNC1((ndo, "(type-0x%02x: len=%u)", bp[i], bp[i + 1]));
			break;
		}
	}
	return 0;

trunc:
	return 1;
}