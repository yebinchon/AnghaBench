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
typedef  int u_int ;
typedef  int u_char ;
struct pcap_pkthdr {int len; int caplen; } ;
struct TYPE_6__ {int /*<<< orphan*/  ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  CHDLC_BCAST 130 
#define  CHDLC_UNICAST 129 
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
#define  PPP_ADDRESS 128 
 int FUNC2 (TYPE_1__*,struct pcap_pkthdr const*,int const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int const*,int) ; 
 int /*<<< orphan*/  ppptype2str ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

u_int
FUNC5(netdissect_options *ndo,
                  const struct pcap_pkthdr *h, register const u_char *p)
{
	register u_int length = h->len;
	register u_int caplen = h->caplen;
	u_int proto;
	u_int hdrlen = 0;

	if (caplen < 2) {
		FUNC1((ndo, "[|ppp]"));
		return (caplen);
	}

	switch (p[0]) {

	case PPP_ADDRESS:
		if (caplen < 4) {
			FUNC1((ndo, "[|ppp]"));
			return (caplen);
		}

		if (ndo->ndo_eflag)
			FUNC1((ndo, "%02x %02x %d ", p[0], p[1], length));
		p += 2;
		length -= 2;
		hdrlen += 2;

		proto = FUNC0(p);
		p += 2;
		length -= 2;
		hdrlen += 2;
		FUNC1((ndo, "%s: ", FUNC4(ppptype2str, "unknown PPP protocol (0x%04x)", proto)));

		FUNC3(ndo, proto, p, length);
		break;

	case CHDLC_UNICAST:
	case CHDLC_BCAST:
		return (FUNC2(ndo, h, p));

	default:
		if (caplen < 4) {
			FUNC1((ndo, "[|ppp]"));
			return (caplen);
		}

		if (ndo->ndo_eflag)
			FUNC1((ndo, "%02x %02x %d ", p[0], p[1], length));
		p += 2;
		hdrlen += 2;

		/*
		 * XXX - NetBSD's "ppp_netbsd_serial_if_print()" treats
		 * the next two octets as an Ethernet type; does that
		 * ever happen?
		 */
		FUNC1((ndo, "unknown addr %02x; ctrl %02x", p[0], p[1]));
		break;
	}

	return (hdrlen);
}