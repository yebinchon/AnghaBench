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
 int IP6OPT_MINLEN ; 
#define  IP6OPT_PAD1 129 
#define  IP6OPT_PADN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(netdissect_options *ndo, const u_char *bp, int len)
{
    int i;
    int optlen;

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
            FUNC0((ndo, ", pad1"));
	    break;
	case IP6OPT_PADN:
	    if (len - i < IP6OPT_MINLEN) {
		FUNC0((ndo, ", padn: trunc"));
		goto trunc;
	    }
            FUNC0((ndo, ", padn"));
	    break;
	default:
	    if (len - i < IP6OPT_MINLEN) {
		FUNC0((ndo, ", sopt_type %d: trunc)", bp[i]));
		goto trunc;
	    }
	    FUNC0((ndo, ", sopt_type 0x%02x: len=%d", bp[i], bp[i + 1]));
	    break;
	}
    }
    return;

trunc:
    FUNC0((ndo, "[trunc] "));
}