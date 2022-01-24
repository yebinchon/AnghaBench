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
typedef  void* uint16_t ;
typedef  int u_short ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sll_header {int /*<<< orphan*/  const sll_protocol; } ;
struct pcap_pkthdr {int caplen; int len; } ;
struct TYPE_8__ {int /*<<< orphan*/  ndo_suppress_default_print; scalar_t__ ndo_eflag; int /*<<< orphan*/  ndo_qflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int ETHERMTU ; 
 int ETHERTYPE_8021Q ; 
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
#define  LINUX_SLL_P_802_2 129 
#define  LINUX_SLL_P_802_3 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int SLL_HDR_LEN ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ethertype_values ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct sll_header const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

u_int
FUNC9(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
	u_int caplen = h->caplen;
	u_int length = h->len;
	register const struct sll_header *sllp;
	u_short ether_type;
	int llc_hdrlen;
	u_int hdrlen;

	if (caplen < SLL_HDR_LEN) {
		/*
		 * XXX - this "can't happen" because "pcap-linux.c" always
		 * adds this many bytes of header to every packet in a
		 * cooked socket capture.
		 */
		FUNC2((ndo, "[|sll]"));
		return (caplen);
	}

	sllp = (const struct sll_header *)p;

	if (ndo->ndo_eflag)
		FUNC7(ndo, sllp, length);

	/*
	 * Go past the cooked-mode header.
	 */
	length -= SLL_HDR_LEN;
	caplen -= SLL_HDR_LEN;
	p += SLL_HDR_LEN;
	hdrlen = SLL_HDR_LEN;

	ether_type = FUNC0(&sllp->sll_protocol);

recurse:
	/*
	 * Is it (gag) an 802.3 encapsulation, or some non-Ethernet
	 * packet type?
	 */
	if (ether_type <= ETHERMTU) {
		/*
		 * Yes - what type is it?
		 */
		switch (ether_type) {

		case LINUX_SLL_P_802_3:
			/*
			 * Ethernet_802.3 IPX frame.
			 */
			FUNC5(ndo, p, length);
			break;

		case LINUX_SLL_P_802_2:
			/*
			 * 802.2.
			 * Try to print the LLC-layer header & higher layers.
			 */
			llc_hdrlen = FUNC6(ndo, p, length, caplen, NULL, NULL);
			if (llc_hdrlen < 0)
				goto unknown;	/* unknown LLC type */
			hdrlen += llc_hdrlen;
			break;

		default:
			/*FALLTHROUGH*/

		unknown:
			/* packet type not known, print raw packet */
			if (!ndo->ndo_suppress_default_print)
				FUNC1(p, caplen);
			break;
		}
	} else if (ether_type == ETHERTYPE_8021Q) {
		/*
		 * Print VLAN information, and then go back and process
		 * the enclosed type field.
		 */
		if (caplen < 4) {
			FUNC2((ndo, "[|vlan]"));
			return (hdrlen + caplen);
		}
		if (length < 4) {
			FUNC2((ndo, "[|vlan]"));
			return (hdrlen + length);
		}
	        if (ndo->ndo_eflag) {
	        	uint16_t tag = FUNC0(p);

			FUNC2((ndo, "%s, ", FUNC4(tag)));
		}

		ether_type = FUNC0(p + 2);
		if (ether_type <= ETHERMTU)
			ether_type = LINUX_SLL_P_802_2;
		if (!ndo->ndo_qflag) {
			FUNC2((ndo, "ethertype %s, ",
			    FUNC8(ethertype_values, "Unknown", ether_type)));
		}
		p += 4;
		length -= 4;
		caplen -= 4;
		hdrlen += 4;
		goto recurse;
	} else {
		if (FUNC3(ndo, ether_type, p, length, caplen, NULL, NULL) == 0) {
			/* ether_type not known, print raw packet */
			if (!ndo->ndo_eflag)
				FUNC7(ndo, sllp, length + SLL_HDR_LEN);
			if (!ndo->ndo_suppress_default_print)
				FUNC1(p, caplen);
		}
	}

	return (hdrlen);
}