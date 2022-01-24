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
typedef  int /*<<< orphan*/  u_char ;
struct token_header {int /*<<< orphan*/ * token_rseg; int /*<<< orphan*/  token_rcf; } ;
struct lladdr_info {int* addr; void* addr_string; } ;
struct ether_header {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ndo_suppress_default_print; scalar_t__ ndo_eflag; scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct token_header const*,int) ; 
 size_t FUNC1 (struct token_header const*) ; 
 size_t FUNC2 (struct token_header const*) ; 
 int* FUNC3 (struct ether_header*) ; 
 int* FUNC4 (struct ether_header*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct token_header const*) ; 
 scalar_t__ FUNC7 (struct token_header const*) ; 
 size_t FUNC8 (struct token_header const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (struct token_header const*) ; 
 int /*<<< orphan*/  FUNC12 (struct token_header const*,int) ; 
 int FUNC13 (struct token_header const*) ; 
 scalar_t__ TOKEN_FC_LLC ; 
 scalar_t__ TOKEN_HDRLEN ; 
 int /*<<< orphan*/ * broadcast_indicator ; 
 int /*<<< orphan*/ * direction ; 
 void* etheraddr_string ; 
 int /*<<< orphan*/  FUNC14 (struct token_header const*,char*,char*) ; 
 int /*<<< orphan*/ * largest_frame ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,struct token_header const*,scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  tstr ; 

u_int
FUNC17(netdissect_options *ndo, const u_char *p, u_int length, u_int caplen)
{
	const struct token_header *trp;
	int llc_hdrlen;
	struct ether_header ehdr;
	struct lladdr_info src, dst;
	u_int route_len = 0, hdr_len = TOKEN_HDRLEN;
	int seg;

	trp = (const struct token_header *)p;

	if (caplen < TOKEN_HDRLEN) {
		FUNC10((ndo, "%s", tstr));
		return hdr_len;
	}

	/*
	 * Get the TR addresses into a canonical form
	 */
	FUNC14(trp, (char*)FUNC4(&ehdr), (char*)FUNC3(&ehdr));

	/* Adjust for source routing information in the MAC header */
	if (FUNC7(trp)) {
		/* Clear source-routed bit */
		*FUNC4(&ehdr) &= 0x7f;

		if (ndo->ndo_eflag)
			FUNC16(ndo, trp, length, FUNC4(&ehdr), FUNC3(&ehdr));

		if (caplen < TOKEN_HDRLEN + 2) {
			FUNC10((ndo, "%s", tstr));
			return hdr_len;
		}
		route_len = FUNC11(trp);
		hdr_len += route_len;
		if (caplen < hdr_len) {
			FUNC10((ndo, "%s", tstr));
			return hdr_len;
		}
		if (ndo->ndo_vflag) {
			FUNC10((ndo, "%s ", broadcast_indicator[FUNC1(trp)]));
			FUNC10((ndo, "%s", direction[FUNC2(trp)]));

			for (seg = 0; seg < FUNC13(trp); seg++)
				FUNC10((ndo, " [%d:%d]", FUNC12(trp, seg),
				    FUNC0(trp, seg)));
		} else {
			FUNC10((ndo, "rt = %x", FUNC5(&trp->token_rcf)));

			for (seg = 0; seg < FUNC13(trp); seg++)
				FUNC10((ndo, ":%x", FUNC5(&trp->token_rseg[seg])));
		}
		FUNC10((ndo, " (%s) ", largest_frame[FUNC8(trp)]));
	} else {
		if (ndo->ndo_eflag)
			FUNC16(ndo, trp, length, FUNC4(&ehdr), FUNC3(&ehdr));
	}

	src.addr = FUNC4(&ehdr);
	src.addr_string = etheraddr_string;
	dst.addr = FUNC3(&ehdr);
	dst.addr_string = etheraddr_string;

	/* Skip over token ring MAC header and routing information */
	length -= hdr_len;
	p += hdr_len;
	caplen -= hdr_len;

	/* Frame Control field determines interpretation of packet */
	if (FUNC6(trp) == TOKEN_FC_LLC) {
		/* Try to print the LLC-layer header & higher layers */
		llc_hdrlen = FUNC15(ndo, p, length, caplen, &src, &dst);
		if (llc_hdrlen < 0) {
			/* packet type not known, print raw packet */
			if (!ndo->ndo_suppress_default_print)
				FUNC9(p, caplen);
			llc_hdrlen = -llc_hdrlen;
		}
		hdr_len += llc_hdrlen;
	} else {
		/* Some kinds of TR packet we cannot handle intelligently */
		/* XXX - dissect MAC packets if frame type is 0 */
		if (!ndo->ndo_eflag)
			FUNC16(ndo, trp, length + TOKEN_HDRLEN + route_len,
			    FUNC4(&ehdr), FUNC3(&ehdr));
		if (!ndo->ndo_suppress_default_print)
			FUNC9(p, caplen);
	}
	return (hdr_len);
}