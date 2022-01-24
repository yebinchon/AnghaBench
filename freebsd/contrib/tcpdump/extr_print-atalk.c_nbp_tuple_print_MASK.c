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
typedef  scalar_t__ u_short ;
typedef  scalar_t__ u_char ;
struct atNBPtuple {int enumerator; scalar_t__ skt; scalar_t__ node; int /*<<< orphan*/  net; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct atNBPtuple* FUNC3 (int /*<<< orphan*/ *,struct atNBPtuple const*,scalar_t__ const*) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const struct atNBPtuple *
FUNC4(netdissect_options *ndo,
                register const struct atNBPtuple *tp, register const u_char *ep,
                register u_short snet, register u_char snode, register u_char skt)
{
	register const struct atNBPtuple *tpn;

	if ((const u_char *)(tp + 1) > ep) {
		FUNC1((ndo, "%s", tstr));
		return 0;
	}
	tpn = FUNC3(ndo, tp, ep);

	/* if the enumerator isn't 1, print it */
	if (tp->enumerator != 1)
		FUNC1((ndo, "(%d)", tp->enumerator));

	/* if the socket doesn't match the src socket, print it */
	if (tp->skt != skt)
		FUNC1((ndo, " %d", tp->skt));

	/* if the address doesn't match the src address, it's an anomaly */
	if (FUNC0(&tp->net) != snet || tp->node != snode)
		FUNC1((ndo, " [addr=%s]",
		    FUNC2(ndo, FUNC0(&tp->net), tp->node)));

	return (tpn);
}