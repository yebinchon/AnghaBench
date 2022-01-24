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
typedef  scalar_t__ u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct atmarp_pkthdr {int dummy; } ;
struct TYPE_7__ {scalar_t__ ndo_vflag; int /*<<< orphan*/  ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  ARPOP_INVREPLY 132 
#define  ARPOP_INVREQUEST 131 
#define  ARPOP_NAK 130 
#define  ARPOP_REPLY 129 
#define  ARPOP_REQUEST 128 
 scalar_t__ FUNC0 (struct atmarp_pkthdr const*) ; 
 scalar_t__ FUNC1 (struct atmarp_pkthdr const*) ; 
 scalar_t__ FUNC2 (struct atmarp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct atmarp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct atmarp_pkthdr const*) ; 
 int FUNC5 (struct atmarp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct atmarp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC7 (struct atmarp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC8 (struct atmarp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC9 (struct atmarp_pkthdr const*) ; 
 int FUNC10 (struct atmarp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC11 (struct atmarp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC12 (struct atmarp_pkthdr const*) ; 
 scalar_t__ ETHERTYPE_IP ; 
 scalar_t__ ETHERTYPE_TRAIL ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct atmarp_pkthdr const) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC17 (struct atmarp_pkthdr const*) ; 
 int /*<<< orphan*/  arphrd_values ; 
 int /*<<< orphan*/  arpop_values ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,struct atmarp_pkthdr const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,struct atmarp_pkthdr const*,scalar_t__) ; 
 int /*<<< orphan*/  ethertype_values ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC22(netdissect_options *ndo,
	     const u_char *bp, u_int length, u_int caplen)
{
	const struct atmarp_pkthdr *ap;
	u_short pro, hrd, op;

	ap = (const struct atmarp_pkthdr *)bp;
	FUNC15(*ap);

	hrd = FUNC0(ap);
	pro = FUNC2(ap);
	op = FUNC1(ap);

	if (!FUNC16(*FUNC17(ap), FUNC10(ap))) {
		FUNC14((ndo, "%s", tstr));
		FUNC13((const u_char *)ap, length);
		return;
	}

        if (!ndo->ndo_eflag) {
            FUNC14((ndo, "ARP, "));
        }

	if ((pro != ETHERTYPE_IP && pro != ETHERTYPE_TRAIL) ||
	    FUNC5(ap) != 4 ||
            FUNC10(ap) != 4 ||
            ndo->ndo_vflag) {
                FUNC14((ndo, "%s, %s (len %u/%u)",
                          FUNC21(arphrd_values, "Unknown Hardware (%u)", hrd),
                          FUNC21(ethertype_values, "Unknown Protocol (0x%04x)", pro),
                          FUNC5(ap),
                          FUNC10(ap)));

                /* don't know know about the address formats */
                if (!ndo->ndo_vflag) {
                    goto out;
                }
	}

        /* print operation */
        FUNC14((ndo, "%s%s ",
               ndo->ndo_vflag ? ", " : "",
               FUNC21(arpop_values, "Unknown (%u)", op)));

	switch (op) {

	case ARPOP_REQUEST:
		FUNC14((ndo, "who-has "));
		FUNC20(ndo, ap, pro);
		if (FUNC9(ap) != 0) {
			FUNC14((ndo, " ("));
			FUNC18(ndo, FUNC8(ap), FUNC9(ap),
			    FUNC11(ap), FUNC12(ap));
			FUNC14((ndo, ")"));
		}
		FUNC14((ndo, " tell "));
		FUNC19(ndo, ap, pro);
		break;

	case ARPOP_REPLY:
		FUNC19(ndo, ap, pro);
		FUNC14((ndo, " is-at "));
		FUNC18(ndo, FUNC3(ap), FUNC4(ap), FUNC6(ap),
                                  FUNC7(ap));
		break;

	case ARPOP_INVREQUEST:
		FUNC14((ndo, "who-is "));
		FUNC18(ndo, FUNC8(ap), FUNC9(ap), FUNC11(ap),
		    FUNC12(ap));
		FUNC14((ndo, " tell "));
		FUNC18(ndo, FUNC3(ap), FUNC4(ap), FUNC6(ap),
		    FUNC7(ap));
		break;

	case ARPOP_INVREPLY:
		FUNC18(ndo, FUNC3(ap), FUNC4(ap), FUNC6(ap),
		    FUNC7(ap));
		FUNC14((ndo, "at "));
		FUNC19(ndo, ap, pro);
		break;

	case ARPOP_NAK:
		FUNC14((ndo, "for "));
		FUNC19(ndo, ap, pro);
		break;

	default:
		FUNC13((const u_char *)ap, caplen);
		return;
	}

 out:
        FUNC14((ndo, ", length %u", length));
        return;

trunc:
	FUNC14((ndo, "%s", tstr));
}