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
typedef  scalar_t__ uint32_t ;
typedef  int u_int ;
typedef  scalar_t__ u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
struct TYPE_6__ {scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const*) ; 
 int /*<<< orphan*/  LLCSAP_IP ; 
 int /*<<< orphan*/  LLCSAP_ISONS ; 
 int /*<<< orphan*/  LLCSAP_SNAP ; 
 scalar_t__ const LLC_UI ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  tstr ; 

u_int
FUNC6(netdissect_options *ndo,
             const struct pcap_pkthdr *h, const u_char *p)
{
	u_int caplen = h->caplen;
	u_int length = h->len;
	uint32_t llchdr;
	u_int hdrlen = 0;

	if (caplen < 1 || length < 1) {
		FUNC3((ndo, "%s", tstr));
		return (caplen);
	}

        /* Cisco Style NLPID ? */
        if (*p == LLC_UI) {
            if (ndo->ndo_eflag)
                FUNC3((ndo, "CNLPID "));
            FUNC5(ndo, p + 1, length - 1);
            return hdrlen;
        }

	/*
	 * Must have at least a DSAP, an SSAP, and the first byte of the
	 * control field.
	 */
	if (caplen < 3 || length < 3) {
		FUNC3((ndo, "%s", tstr));
		return (caplen);
	}

	/*
	 * Extract the presumed LLC header into a variable, for quick
	 * testing.
	 * Then check for a header that's neither a header for a SNAP
	 * packet nor an RFC 2684 routed NLPID-formatted PDU nor
	 * an 802.2-but-no-SNAP IP packet.
	 */
	llchdr = FUNC0(p);
	if (llchdr != FUNC2(LLCSAP_SNAP) &&
	    llchdr != FUNC2(LLCSAP_ISONS) &&
	    llchdr != FUNC2(LLCSAP_IP)) {
		/*
		 * XXX - assume 802.6 MAC header from Fore driver.
		 *
		 * Unfortunately, the above list doesn't check for
		 * all known SAPs, doesn't check for headers where
		 * the source and destination SAP aren't the same,
		 * and doesn't check for non-UI frames.  It also
		 * runs the risk of an 802.6 MAC header that happens
		 * to begin with one of those values being
		 * incorrectly treated as an 802.2 header.
		 *
		 * So is that Fore driver still around?  And, if so,
		 * is it still putting 802.6 MAC headers on ATM
		 * packets?  If so, could it be changed to use a
		 * new DLT_IEEE802_6 value if we added it?
		 */
		if (caplen < 20 || length < 20) {
			FUNC3((ndo, "%s", tstr));
			return (caplen);
		}
		if (ndo->ndo_eflag)
			FUNC3((ndo, "%08x%08x %08x%08x ",
			       FUNC1(p),
			       FUNC1(p+4),
			       FUNC1(p+8),
			       FUNC1(p+12)));
		p += 20;
		length -= 20;
		caplen -= 20;
		hdrlen += 20;
	}
	hdrlen += FUNC4(ndo, p, length, caplen);
	return (hdrlen);
}