#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_18__ {int ndo_vflag; int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;
struct TYPE_19__ {int /*<<< orphan*/  const id; int /*<<< orphan*/  const qdcount; int /*<<< orphan*/  const arcount; int /*<<< orphan*/  const nscount; int /*<<< orphan*/  const ancount; } ;
typedef  TYPE_2__ HEADER ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__ const*) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 size_t FUNC3 (TYPE_2__ const*) ; 
 scalar_t__ FUNC4 (TYPE_2__ const*) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 
 size_t FUNC6 (TYPE_2__ const*) ; 
 scalar_t__ FUNC7 (TYPE_2__ const*) ; 
 scalar_t__ FUNC8 (TYPE_2__ const*) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 
 size_t IQUERY ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__ const) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * ns_ops ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * ns_resp ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

void
FUNC15(netdissect_options *ndo,
         register const u_char *bp, u_int length, int is_mdns)
{
	register const HEADER *np;
	register int qdcount, ancount, nscount, arcount;
	register const u_char *cp;
	uint16_t b2;

	np = (const HEADER *)bp;
	FUNC11(*np);
	/* get the byte-order right */
	qdcount = FUNC9(&np->qdcount);
	ancount = FUNC9(&np->ancount);
	nscount = FUNC9(&np->nscount);
	arcount = FUNC9(&np->arcount);

	if (FUNC4(np)) {
		/* this is a response */
		FUNC10((ndo, "%d%s%s%s%s%s%s",
			FUNC9(&np->id),
			ns_ops[FUNC3(np)],
			ns_resp[FUNC6(np)],
			FUNC0(np)? "*" : "",
			FUNC5(np)? "" : "-",
			FUNC8(np)? "|" : "",
			FUNC1(np)? "$" : ""));

		if (qdcount != 1)
			FUNC10((ndo, " [%dq]", qdcount));
		/* Print QUESTION section on -vv */
		cp = (const u_char *)(np + 1);
		while (qdcount--) {
			if (qdcount < FUNC9(&np->qdcount) - 1)
				FUNC10((ndo, ","));
			if (ndo->ndo_vflag > 1) {
				FUNC10((ndo, " q:"));
				if ((cp = FUNC13(ndo, cp, bp, is_mdns)) == NULL)
					goto trunc;
			} else {
				if ((cp = FUNC12(ndo, cp)) == NULL)
					goto trunc;
				cp += 4;	/* skip QTYPE and QCLASS */
			}
		}
		FUNC10((ndo, " %d/%d/%d", ancount, nscount, arcount));
		if (ancount--) {
			if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
				goto trunc;
			while (cp < ndo->ndo_snapend && ancount--) {
				FUNC10((ndo, ","));
				if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
					goto trunc;
			}
		}
		if (ancount > 0)
			goto trunc;
		/* Print NS and AR sections on -vv */
		if (ndo->ndo_vflag > 1) {
			if (cp < ndo->ndo_snapend && nscount--) {
				FUNC10((ndo, " ns:"));
				if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
					goto trunc;
				while (cp < ndo->ndo_snapend && nscount--) {
					FUNC10((ndo, ","));
					if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
						goto trunc;
				}
			}
			if (nscount > 0)
				goto trunc;
			if (cp < ndo->ndo_snapend && arcount--) {
				FUNC10((ndo, " ar:"));
				if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
					goto trunc;
				while (cp < ndo->ndo_snapend && arcount--) {
					FUNC10((ndo, ","));
					if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
						goto trunc;
				}
			}
			if (arcount > 0)
				goto trunc;
		}
	}
	else {
		/* this is a request */
		FUNC10((ndo, "%d%s%s%s", FUNC9(&np->id), ns_ops[FUNC3(np)],
		    FUNC7(np) ? "+" : "",
		    FUNC2(np) ? "%" : ""));

		/* any weirdness? */
		b2 = FUNC9(((const u_short *)np)+1);
		if (b2 & 0x6cf)
			FUNC10((ndo, " [b2&3=0x%x]", b2));

		if (FUNC3(np) == IQUERY) {
			if (qdcount)
				FUNC10((ndo, " [%dq]", qdcount));
			if (ancount != 1)
				FUNC10((ndo, " [%da]", ancount));
		}
		else {
			if (ancount)
				FUNC10((ndo, " [%da]", ancount));
			if (qdcount != 1)
				FUNC10((ndo, " [%dq]", qdcount));
		}
		if (nscount)
			FUNC10((ndo, " [%dn]", nscount));
		if (arcount)
			FUNC10((ndo, " [%dau]", arcount));

		cp = (const u_char *)(np + 1);
		if (qdcount--) {
			cp = FUNC13(ndo, cp, (const u_char *)np, is_mdns);
			if (!cp)
				goto trunc;
			while (cp < ndo->ndo_snapend && qdcount--) {
				cp = FUNC13(ndo, (const u_char *)cp,
					       (const u_char *)np,
					       is_mdns);
				if (!cp)
					goto trunc;
			}
		}
		if (qdcount > 0)
			goto trunc;

		/* Print remaining sections on -vv */
		if (ndo->ndo_vflag > 1) {
			if (ancount--) {
				if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
					goto trunc;
				while (cp < ndo->ndo_snapend && ancount--) {
					FUNC10((ndo, ","));
					if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
						goto trunc;
				}
			}
			if (ancount > 0)
				goto trunc;
			if (cp < ndo->ndo_snapend && nscount--) {
				FUNC10((ndo, " ns:"));
				if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
					goto trunc;
				while (nscount-- && cp < ndo->ndo_snapend) {
					FUNC10((ndo, ","));
					if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
						goto trunc;
				}
			}
			if (nscount > 0)
				goto trunc;
			if (cp < ndo->ndo_snapend && arcount--) {
				FUNC10((ndo, " ar:"));
				if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
					goto trunc;
				while (cp < ndo->ndo_snapend && arcount--) {
					FUNC10((ndo, ","));
					if ((cp = FUNC14(ndo, cp, bp, is_mdns)) == NULL)
						goto trunc;
				}
			}
			if (arcount > 0)
				goto trunc;
		}
	}
	FUNC10((ndo, " (%d)", length));
	return;

  trunc:
	FUNC10((ndo, "[|domain]"));
}