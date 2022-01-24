#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct arp_pkthdr {int dummy; } ;
struct TYPE_8__ {scalar_t__ ndo_vflag; int /*<<< orphan*/  ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  ARPHRD_ATM2225 135 
#define  ARPHRD_FRELAY 134 
#define  ARPOP_INVREPLY 133 
#define  ARPOP_INVREQUEST 132 
#define  ARPOP_REPLY 131 
#define  ARPOP_REQUEST 130 
#define  ARPOP_REVREPLY 129 
#define  ARPOP_REVREQUEST 128 
 int ETHERTYPE_IP ; 
 int ETHERTYPE_TRAIL ; 
 int FUNC0 (struct arp_pkthdr const*) ; 
 scalar_t__ FUNC1 (struct arp_pkthdr const*) ; 
 int LINKADDR_ETHER ; 
 int LINKADDR_FRELAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct arp_pkthdr const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct arp_pkthdr const*) ; 
 int FUNC7 (struct arp_pkthdr const*) ; 
 int FUNC8 (struct arp_pkthdr const*) ; 
 scalar_t__ FUNC9 (struct arp_pkthdr const*) ; 
 scalar_t__ FUNC10 (struct arp_pkthdr const*) ; 
 int /*<<< orphan*/ * FUNC11 (struct arp_pkthdr const*) ; 
 int /*<<< orphan*/  arphrd_values ; 
 int /*<<< orphan*/  arpop_values ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethertype_values ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct arp_pkthdr const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,struct arp_pkthdr const*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC18(netdissect_options *ndo,
	  const u_char *bp, u_int length, u_int caplen)
{
	const struct arp_pkthdr *ap;
	u_short pro, hrd, op, linkaddr;

	ap = (const struct arp_pkthdr *)bp;
	FUNC4(*ap);

	hrd = FUNC0(ap);
	pro = FUNC7(ap);
	op = FUNC6(ap);


        /* if its ATM then call the ATM ARP printer
           for Frame-relay ARP most of the fields
           are similar to Ethernet so overload the Ethernet Printer
           and set the linkaddr type for linkaddr_string(ndo, ) accordingly */

        switch(hrd) {
        case ARPHRD_ATM2225:
            FUNC12(ndo, bp, length, caplen);
            return;
        case ARPHRD_FRELAY:
            linkaddr = LINKADDR_FRELAY;
            break;
        default:
            linkaddr = LINKADDR_ETHER;
            break;
	}

	if (!FUNC5(*FUNC11(ap), FUNC8(ap))) {
		FUNC3((ndo, "%s", tstr));
		FUNC2((const u_char *)ap, length);
		return;
	}

        if (!ndo->ndo_eflag) {
            FUNC3((ndo, "ARP, "));
        }

        /* print hardware type/len and proto type/len */
        if ((pro != ETHERTYPE_IP && pro != ETHERTYPE_TRAIL) ||
	    FUNC8(ap) != 4 ||
            FUNC1(ap) == 0 ||
            ndo->ndo_vflag) {
            FUNC3((ndo, "%s (len %u), %s (len %u)",
                      FUNC16(arphrd_values, "Unknown Hardware (%u)", hrd),
                      FUNC1(ap),
                      FUNC16(ethertype_values, "Unknown Protocol (0x%04x)", pro),
                      FUNC8(ap)));

            /* don't know know about the address formats */
            if (!ndo->ndo_vflag) {
                goto out;
            }
	}

        /* print operation */
        FUNC3((ndo, "%s%s ",
               ndo->ndo_vflag ? ", " : "",
               FUNC16(arpop_values, "Unknown (%u)", op)));

	switch (op) {

	case ARPOP_REQUEST:
		FUNC3((ndo, "who-has "));
		FUNC17(ndo, ap, pro);
		if (FUNC13((const u_char *)FUNC10(ap), FUNC1(ap)))
			FUNC3((ndo, " (%s)",
				  FUNC14(ndo, FUNC10(ap), linkaddr, FUNC1(ap))));
		FUNC3((ndo, " tell "));
		FUNC15(ndo, ap, pro);
		break;

	case ARPOP_REPLY:
		FUNC15(ndo, ap, pro);
		FUNC3((ndo, " is-at %s",
                          FUNC14(ndo, FUNC9(ap), linkaddr, FUNC1(ap))));
		break;

	case ARPOP_REVREQUEST:
		FUNC3((ndo, "who-is %s tell %s",
			  FUNC14(ndo, FUNC10(ap), linkaddr, FUNC1(ap)),
			  FUNC14(ndo, FUNC9(ap), linkaddr, FUNC1(ap))));
		break;

	case ARPOP_REVREPLY:
		FUNC3((ndo, "%s at ",
			  FUNC14(ndo, FUNC10(ap), linkaddr, FUNC1(ap))));
		FUNC17(ndo, ap, pro);
		break;

	case ARPOP_INVREQUEST:
		FUNC3((ndo, "who-is %s tell %s",
			  FUNC14(ndo, FUNC10(ap), linkaddr, FUNC1(ap)),
			  FUNC14(ndo, FUNC9(ap), linkaddr, FUNC1(ap))));
		break;

	case ARPOP_INVREPLY:
		FUNC3((ndo,"%s at ",
			  FUNC14(ndo, FUNC9(ap), linkaddr, FUNC1(ap))));
		FUNC15(ndo, ap, pro);
		break;

	default:
		FUNC2((const u_char *)ap, caplen);
		return;
	}

 out:
        FUNC3((ndo, ", length %u", length));

	return;
trunc:
	FUNC3((ndo, "%s", tstr));
}