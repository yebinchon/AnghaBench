#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct atNBPtuple {int /*<<< orphan*/  skt; int /*<<< orphan*/  node; int /*<<< orphan*/  net; int /*<<< orphan*/  enumerator; } ;
struct atNBP {int control; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  nbpBrRq 130 
 int nbpHeaderSize ; 
#define  nbpLkUp 129 
#define  nbpLkUpReply 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct atNBPtuple const*,int /*<<< orphan*/  const*) ; 
 struct atNBPtuple* FUNC4 (TYPE_1__*,struct atNBPtuple const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
          register const struct atNBP *np, u_int length, register u_short snet,
          register u_char snode, register u_char skt)
{
	register const struct atNBPtuple *tp =
		(const struct atNBPtuple *)((const u_char *)np + nbpHeaderSize);
	int i;
	const u_char *ep;

	if (length < nbpHeaderSize) {
		FUNC1((ndo, " truncated-nbp %u", length));
		return;
	}

	length -= nbpHeaderSize;
	if (length < 8) {
		/* must be room for at least one tuple */
		FUNC1((ndo, " truncated-nbp %u", length + nbpHeaderSize));
		return;
	}
	/* ep points to end of available data */
	ep = ndo->ndo_snapend;
	if ((const u_char *)tp > ep) {
		FUNC1((ndo, "%s", tstr));
		return;
	}
	switch (i = np->control & 0xf0) {

	case nbpBrRq:
	case nbpLkUp:
		FUNC1((ndo, i == nbpLkUp? " nbp-lkup %d:":" nbp-brRq %d:", np->id));
		if ((const u_char *)(tp + 1) > ep) {
			FUNC1((ndo, "%s", tstr));
			return;
		}
		(void)FUNC3(ndo, tp, ep);
		/*
		 * look for anomalies: the spec says there can only
		 * be one tuple, the address must match the source
		 * address and the enumerator should be zero.
		 */
		if ((np->control & 0xf) != 1)
			FUNC1((ndo, " [ntup=%d]", np->control & 0xf));
		if (tp->enumerator)
			FUNC1((ndo, " [enum=%d]", tp->enumerator));
		if (FUNC0(&tp->net) != snet ||
		    tp->node != snode || tp->skt != skt)
			FUNC1((ndo, " [addr=%s.%d]",
			    FUNC2(ndo, FUNC0(&tp->net),
			    tp->node), tp->skt));
		break;

	case nbpLkUpReply:
		FUNC1((ndo, " nbp-reply %d:", np->id));

		/* print each of the tuples in the reply */
		for (i = np->control & 0xf; --i >= 0 && tp; )
			tp = FUNC4(ndo, tp, ep, snet, snode, skt);
		break;

	default:
		FUNC1((ndo, " nbp-0x%x  %d (%u)", np->control, np->id, length));
		break;
	}
}