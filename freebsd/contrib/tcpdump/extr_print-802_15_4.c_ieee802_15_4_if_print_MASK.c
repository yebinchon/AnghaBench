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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct pcap_pkthdr {int caplen; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_suppress_default_print; scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
#define  FC_ADDRESSING_MODE_LONG 131 
#define  FC_ADDRESSING_MODE_NONE 130 
#define  FC_ADDRESSING_MODE_RESERVED 129 
#define  FC_ADDRESSING_MODE_SHORT 128 
 int FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 int FC_PAN_ID_COMPRESSION ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * ftypes ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

u_int
FUNC8(netdissect_options *ndo,
                      const struct pcap_pkthdr *h, const u_char *p)
{
	u_int caplen = h->caplen;
	u_int hdrlen;
	uint16_t fc;
	uint8_t seq;
	uint16_t panid = 0;

	if (caplen < 3) {
		FUNC6((ndo, "[|802.15.4]"));
		return caplen;
	}
	hdrlen = 3;

	fc = FUNC0(p);
	seq = FUNC1(p + 2);

	p += 3;
	caplen -= 3;

	FUNC6((ndo,"IEEE 802.15.4 %s packet ", ftypes[FUNC3(fc)]));
	if (ndo->ndo_vflag)
		FUNC6((ndo,"seq %02x ", seq));

	/*
	 * Destination address and PAN ID, if present.
	 */
	switch (FUNC2(fc)) {
	case FC_ADDRESSING_MODE_NONE:
		if (fc & FC_PAN_ID_COMPRESSION) {
			/*
			 * PAN ID compression; this requires that both
			 * the source and destination addresses be present,
			 * but the destination address is missing.
			 */
			FUNC6((ndo, "[|802.15.4]"));
			return hdrlen;
		}
		if (ndo->ndo_vflag)
			FUNC6((ndo,"none "));
		break;
	case FC_ADDRESSING_MODE_RESERVED:
		if (ndo->ndo_vflag)
			FUNC6((ndo,"reserved destination addressing mode"));
		return hdrlen;
	case FC_ADDRESSING_MODE_SHORT:
		if (caplen < 2) {
			FUNC6((ndo, "[|802.15.4]"));
			return hdrlen;
		}
		panid = FUNC0(p);
		p += 2;
		caplen -= 2;
		hdrlen += 2;
		if (caplen < 2) {
			FUNC6((ndo, "[|802.15.4]"));
			return hdrlen;
		}
		if (ndo->ndo_vflag)
			FUNC6((ndo,"%04x:%04x ", panid, FUNC0(p)));
		p += 2;
		caplen -= 2;
		hdrlen += 2;
		break;
	case FC_ADDRESSING_MODE_LONG:
		if (caplen < 2) {
			FUNC6((ndo, "[|802.15.4]"));
			return hdrlen;
		}
		panid = FUNC0(p);
		p += 2;
		caplen -= 2;
		hdrlen += 2;
		if (caplen < 8) {
			FUNC6((ndo, "[|802.15.4]"));
			return hdrlen;
		}
		if (ndo->ndo_vflag)
			FUNC6((ndo,"%04x:%s ", panid, FUNC7(ndo, p)));
		p += 8;
		caplen -= 8;
		hdrlen += 8;
		break;
	}
	if (ndo->ndo_vflag)
		FUNC6((ndo,"< "));

	/*
	 * Source address and PAN ID, if present.
	 */
	switch (FUNC4(fc)) {
	case FC_ADDRESSING_MODE_NONE:
		if (ndo->ndo_vflag)
			FUNC6((ndo,"none "));
		break;
	case FC_ADDRESSING_MODE_RESERVED:
		if (ndo->ndo_vflag)
			FUNC6((ndo,"reserved source addressing mode"));
		return 0;
	case FC_ADDRESSING_MODE_SHORT:
		if (!(fc & FC_PAN_ID_COMPRESSION)) {
			/*
			 * The source PAN ID is not compressed out, so
			 * fetch it.  (Otherwise, we'll use the destination
			 * PAN ID, fetched above.)
			 */
			if (caplen < 2) {
				FUNC6((ndo, "[|802.15.4]"));
				return hdrlen;
			}
			panid = FUNC0(p);
			p += 2;
			caplen -= 2;
			hdrlen += 2;
		}
		if (caplen < 2) {
			FUNC6((ndo, "[|802.15.4]"));
			return hdrlen;
		}
		if (ndo->ndo_vflag)
			FUNC6((ndo,"%04x:%04x ", panid, FUNC0(p)));
		p += 2;
		caplen -= 2;
		hdrlen += 2;
		break;
	case FC_ADDRESSING_MODE_LONG:
		if (!(fc & FC_PAN_ID_COMPRESSION)) {
			/*
			 * The source PAN ID is not compressed out, so
			 * fetch it.  (Otherwise, we'll use the destination
			 * PAN ID, fetched above.)
			 */
			if (caplen < 2) {
				FUNC6((ndo, "[|802.15.4]"));
				return hdrlen;
			}
			panid = FUNC0(p);
			p += 2;
			caplen -= 2;
			hdrlen += 2;
		}
		if (caplen < 8) {
			FUNC6((ndo, "[|802.15.4]"));
			return hdrlen;
		}
		if (ndo->ndo_vflag)
			FUNC6((ndo,"%04x:%s ", panid, FUNC7(ndo, p)));
		p += 8;
		caplen -= 8;
		hdrlen += 8;
		break;
	}

	if (!ndo->ndo_suppress_default_print)
		FUNC5(p, caplen);

	return hdrlen;
}