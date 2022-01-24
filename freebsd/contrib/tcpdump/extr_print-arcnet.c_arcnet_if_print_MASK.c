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
struct pcap_pkthdr {scalar_t__ caplen; scalar_t__ len; } ;
struct arc_header {int arc_type; int arc_flag; int arc_flag2; int /*<<< orphan*/  arc_seqid; int /*<<< orphan*/  arc_seqid2; } ;
struct TYPE_6__ {scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  ARCTYPE_ARP_OLD 130 
#define  ARCTYPE_DIAGNOSE 129 
#define  ARCTYPE_IP_OLD 128 
 scalar_t__ ARC_HDRLEN ; 
 scalar_t__ ARC_HDRNEWLEN ; 
 scalar_t__ ARC_HDRNEWLEN_EXC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*,scalar_t__,int,int,scalar_t__) ; 

u_int
FUNC5(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
	u_int caplen = h->caplen;
	u_int length = h->len;
	const struct arc_header *ap;

	int phds, flag = 0, archdrlen = 0;
	u_int seqid = 0;
	u_char arc_type;

	if (caplen < ARC_HDRLEN || length < ARC_HDRLEN) {
		FUNC2((ndo, "[|arcnet]"));
		return (caplen);
	}

	ap = (const struct arc_header *)p;
	arc_type = ap->arc_type;

	switch (arc_type) {
	default:
		phds = 1;
		break;
	case ARCTYPE_IP_OLD:
	case ARCTYPE_ARP_OLD:
	case ARCTYPE_DIAGNOSE:
		phds = 0;
		archdrlen = ARC_HDRLEN;
		break;
	}

	if (phds) {
		if (caplen < ARC_HDRNEWLEN || length < ARC_HDRNEWLEN) {
			FUNC4(ndo, p, length, 0, 0, 0);
			FUNC2((ndo, "[|phds]"));
			return (caplen);
		}

		if (ap->arc_flag == 0xff) {
			if (caplen < ARC_HDRNEWLEN_EXC || length < ARC_HDRNEWLEN_EXC) {
				FUNC4(ndo, p, length, 0, 0, 0);
				FUNC2((ndo, "[|phds extended]"));
				return (caplen);
			}
			flag = ap->arc_flag2;
			seqid = FUNC0(&ap->arc_seqid2);
			archdrlen = ARC_HDRNEWLEN_EXC;
		} else {
			flag = ap->arc_flag;
			seqid = FUNC0(&ap->arc_seqid);
			archdrlen = ARC_HDRNEWLEN;
		}
	}


	if (ndo->ndo_eflag)
		FUNC4(ndo, p, length, phds, flag, seqid);

	/*
	 * Go past the ARCNET header.
	 */
	length -= archdrlen;
	caplen -= archdrlen;
	p += archdrlen;

	if (phds && flag && (flag & 1) == 0) {
		/*
		 * This is a middle fragment.
		 */
		return (archdrlen);
	}

	if (!FUNC3(ndo, arc_type, p, length, caplen))
		FUNC1(p, caplen);

	return (archdrlen);
}