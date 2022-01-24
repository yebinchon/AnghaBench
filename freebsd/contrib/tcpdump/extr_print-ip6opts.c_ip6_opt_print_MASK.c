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
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int IP6OPT_HOMEADDR_MINLEN ; 
#define  IP6OPT_HOME_ADDRESS 132 
#define  IP6OPT_JUMBO 131 
 int IP6OPT_JUMBO_LEN ; 
 int IP6OPT_MINLEN ; 
#define  IP6OPT_PAD1 130 
#define  IP6OPT_PADN 129 
#define  IP6OPT_ROUTER_ALERT 128 
 int IP6OPT_RTALERT_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo, const u_char *bp, int len)
{
    int i;
    int optlen = 0;

    if (len == 0)
        return;
    for (i = 0; i < len; i += optlen) {
	if (bp[i] == IP6OPT_PAD1)
	    optlen = 1;
	else {
	    if (i + 1 < len)
		optlen = bp[i + 1] + 2;
	    else
		goto trunc;
	}
	if (i + optlen > len)
	    goto trunc;

	switch (bp[i]) {
	case IP6OPT_PAD1:
            FUNC2((ndo, "(pad1)"));
	    break;
	case IP6OPT_PADN:
	    if (len - i < IP6OPT_MINLEN) {
		FUNC2((ndo, "(padn: trunc)"));
		goto trunc;
	    }
            FUNC2((ndo, "(padn)"));
	    break;
	case IP6OPT_ROUTER_ALERT:
	    if (len - i < IP6OPT_RTALERT_LEN) {
		FUNC2((ndo, "(rtalert: trunc)"));
		goto trunc;
	    }
	    if (bp[i + 1] != IP6OPT_RTALERT_LEN - 2) {
		FUNC2((ndo, "(rtalert: invalid len %d)", bp[i + 1]));
		goto trunc;
	    }
	    FUNC2((ndo, "(rtalert: 0x%04x) ", FUNC0(&bp[i + 2])));
	    break;
	case IP6OPT_JUMBO:
	    if (len - i < IP6OPT_JUMBO_LEN) {
		FUNC2((ndo, "(jumbo: trunc)"));
		goto trunc;
	    }
	    if (bp[i + 1] != IP6OPT_JUMBO_LEN - 2) {
		FUNC2((ndo, "(jumbo: invalid len %d)", bp[i + 1]));
		goto trunc;
	    }
	    FUNC2((ndo, "(jumbo: %u) ", FUNC1(&bp[i + 2])));
	    break;
        case IP6OPT_HOME_ADDRESS:
	    if (len - i < IP6OPT_HOMEADDR_MINLEN) {
		FUNC2((ndo, "(homeaddr: trunc)"));
		goto trunc;
	    }
	    if (bp[i + 1] < IP6OPT_HOMEADDR_MINLEN - 2) {
		FUNC2((ndo, "(homeaddr: invalid len %d)", bp[i + 1]));
		goto trunc;
	    }
	    FUNC2((ndo, "(homeaddr: %s", FUNC4(ndo, &bp[i + 2])));
            if (bp[i + 1] > IP6OPT_HOMEADDR_MINLEN - 2) {
		FUNC3(ndo, &bp[i + IP6OPT_HOMEADDR_MINLEN],
		    (optlen - IP6OPT_HOMEADDR_MINLEN));
	    }
            FUNC2((ndo, ")"));
	    break;
	default:
	    if (len - i < IP6OPT_MINLEN) {
		FUNC2((ndo, "(type %d: trunc)", bp[i]));
		goto trunc;
	    }
	    FUNC2((ndo, "(opt_type 0x%02x: len=%d)", bp[i], bp[i + 1]));
	    break;
	}
    }
    FUNC2((ndo, " "));
    return;

trunc:
    FUNC2((ndo, "[trunc] "));
}