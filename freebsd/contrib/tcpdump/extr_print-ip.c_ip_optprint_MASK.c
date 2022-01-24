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
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
#define  IPOPT_EOL 135 
#define  IPOPT_LSRR 134 
#define  IPOPT_NOP 133 
#define  IPOPT_RA 132 
#define  IPOPT_RR 131 
#define  IPOPT_SECURITY 130 
#define  IPOPT_SSRR 129 
#define  IPOPT_TS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  ip_option_values ; 
 int FUNC4 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC7(netdissect_options *ndo,
            register const u_char *cp, u_int length)
{
	register u_int option_len;
	const char *sep = "";

	for (; length > 0; cp += option_len, length -= option_len) {
		u_int option_code;

		FUNC1((ndo, "%s", sep));
		sep = ",";

		FUNC2(*cp);
		option_code = *cp;

		FUNC1((ndo, "%s",
		          FUNC6(ip_option_values,"unknown %u",option_code)));

		if (option_code == IPOPT_NOP ||
                    option_code == IPOPT_EOL)
			option_len = 1;

		else {
			FUNC2(cp[1]);
			option_len = cp[1];
			if (option_len < 2) {
				FUNC1((ndo, " [bad length %u]", option_len));
				return;
			}
		}

		if (option_len > length) {
			FUNC1((ndo, " [bad length %u]", option_len));
			return;
		}

		FUNC3(*cp, option_len);

		switch (option_code) {
		case IPOPT_EOL:
			return;

		case IPOPT_TS:
			if (FUNC5(ndo, cp, option_len) == -1)
				goto trunc;
			break;

		case IPOPT_RR:       /* fall through */
		case IPOPT_SSRR:
		case IPOPT_LSRR:
			if (FUNC4(ndo, cp, option_len) == -1)
				goto trunc;
			break;

		case IPOPT_RA:
			if (option_len < 4) {
				FUNC1((ndo, " [bad length %u]", option_len));
				break;
			}
			FUNC2(cp[3]);
			if (FUNC0(&cp[2]) != 0)
				FUNC1((ndo, " value %u", FUNC0(&cp[2])));
			break;

		case IPOPT_NOP:       /* nothing to print - fall through */
		case IPOPT_SECURITY:
		default:
			break;
		}
	}
	return;

trunc:
	FUNC1((ndo, "%s", tstr));
}