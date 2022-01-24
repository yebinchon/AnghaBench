#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 unsigned int FUNC0 (int const*) ; 
 unsigned int MSDP_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const*) ; 

void
FUNC6(netdissect_options *ndo, const u_char *sp, u_int length)
{
	unsigned int type, len;

	FUNC3(*sp, 3);
	/* See if we think we're at the beginning of a compound packet */
	type = *sp;
	len = FUNC0(sp + 1);
	if (len > 1500 || len < 3 || type == 0 || type > MSDP_TYPE_MAX)
		goto trunc;	/* not really truncated, but still not decodable */
	FUNC1((ndo, " msdp:"));
	while (length > 0) {
		FUNC3(*sp, 3);
		type = *sp;
		len = FUNC0(sp + 1);
		if (len > 1400 || ndo->ndo_vflag)
			FUNC1((ndo, " [len %u]", len));
		if (len < 3)
			goto trunc;
		sp += 3;
		length -= 3;
		switch (type) {
		case 1:	/* IPv4 Source-Active */
		case 3: /* IPv4 Source-Active Response */
			if (type == 1)
				FUNC1((ndo, " SA"));
			else
				FUNC1((ndo, " SA-Response"));
			FUNC2(*sp);
			FUNC1((ndo, " %u entries", *sp));
			if ((u_int)((*sp * 12) + 8) < len) {
				FUNC1((ndo, " [w/data]"));
				if (ndo->ndo_vflag > 1) {
					FUNC1((ndo, " "));
					FUNC4(ndo, sp + *sp * 12 + 8 - 3,
					         len - (*sp * 12 + 8));
				}
			}
			break;
		case 2:
			FUNC1((ndo, " SA-Request"));
			FUNC3(*sp, 5);
			FUNC1((ndo, " for %s", FUNC5(ndo, sp + 1)));
			break;
		case 4:
			FUNC1((ndo, " Keepalive"));
			if (len != 3)
				FUNC1((ndo, "[len=%d] ", len));
			break;
		case 5:
			FUNC1((ndo, " Notification"));
			break;
		default:
			FUNC1((ndo, " [type=%d len=%d]", type, len));
			break;
		}
		sp += (len - 3);
		length -= (len - 3);
	}
	return;
trunc:
	FUNC1((ndo, " [|msdp]"));
}