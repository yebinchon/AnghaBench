#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,scalar_t__ const) ; 
 scalar_t__ OF_PACKET_QUEUE_LEN ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC5(netdissect_options *ndo,
                  const u_char *cp, const u_char *ep, u_int len)
{
	const u_char *cp0 = cp;
	const u_int len0 = len;
	uint16_t desclen;

	while (len) {
		if (len < OF_PACKET_QUEUE_LEN)
			goto invalid;
		/* queue_id */
		FUNC3(*cp, 4);
		FUNC2((ndo, "\n\t  queue_id %u", FUNC1(cp)));
		cp += 4;
		/* len */
		FUNC3(*cp, 2);
		desclen = FUNC0(cp);
		cp += 2;
		FUNC2((ndo, ", len %u", desclen));
		if (desclen < OF_PACKET_QUEUE_LEN || desclen > len)
			goto invalid;
		/* pad */
		FUNC3(*cp, 2);
		cp += 2;
		/* properties */
		if (ndo->ndo_vflag < 2) {
			FUNC3(*cp, desclen - OF_PACKET_QUEUE_LEN);
			cp += desclen - OF_PACKET_QUEUE_LEN;
			goto next_queue;
		}
		if (ep == (cp = FUNC4(ndo, cp, ep, desclen - OF_PACKET_QUEUE_LEN)))
			return ep; /* end of snapshot */
next_queue:
		len -= desclen;
	} /* while */
	return cp;

invalid: /* skip the rest of queues */
	FUNC2((ndo, "%s", istr));
	FUNC3(*cp0, len0);
	return cp0 + len0;
trunc:
	FUNC2((ndo, "%s", tstr));
	return ep;
}