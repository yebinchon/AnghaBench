#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct lladdr_info {int /*<<< orphan*/  addr; void* addr_string; } ;
struct TYPE_10__ {int /*<<< orphan*/  ndo_suppress_default_print; scalar_t__ ndo_eflag; scalar_t__ ndo_Hflag; int /*<<< orphan*/  ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE802_11_FC_LEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
#define  T_CTRL 130 
#define  T_DATA 129 
#define  T_MGMT 128 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 void* etheraddr_string ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__,scalar_t__) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  tstr ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static u_int
FUNC18(netdissect_options *ndo,
                 const u_char *p, u_int length, u_int orig_caplen, int pad,
                 u_int fcslen)
{
	uint16_t fc;
	u_int caplen, hdrlen, meshdrlen;
	struct lladdr_info src, dst;
	int llc_hdrlen;

	caplen = orig_caplen;
	/* Remove FCS, if present */
	if (length < fcslen) {
		FUNC7((ndo, "%s", tstr));
		return caplen;
	}
	length -= fcslen;
	if (caplen > length) {
		/* Amount of FCS in actual packet data, if any */
		fcslen = caplen - length;
		caplen -= fcslen;
		ndo->ndo_snapend -= fcslen;
	}

	if (caplen < IEEE802_11_FC_LEN) {
		FUNC7((ndo, "%s", tstr));
		return orig_caplen;
	}

	fc = FUNC2(p);
	hdrlen = FUNC9(ndo, fc);
	if (hdrlen == 0) {
		/* Unknown frame type or control frame subtype; quit. */
		return (0);
	}
	if (pad)
		hdrlen = FUNC16(hdrlen, 4);
	if (ndo->ndo_Hflag && FUNC5(fc) == T_DATA &&
	    FUNC1(FUNC4(fc))) {
		meshdrlen = FUNC10(p+hdrlen);
		hdrlen += meshdrlen;
	} else
		meshdrlen = 0;

	if (caplen < hdrlen) {
		FUNC7((ndo, "%s", tstr));
		return hdrlen;
	}

	if (ndo->ndo_eflag)
		FUNC13(ndo, fc, p, hdrlen, meshdrlen);

	/*
	 * Go past the 802.11 header.
	 */
	length -= hdrlen;
	caplen -= hdrlen;
	p += hdrlen;

	src.addr_string = etheraddr_string;
	dst.addr_string = etheraddr_string;
	switch (FUNC5(fc)) {
	case T_MGMT:
		FUNC12(p - hdrlen, &src.addr, &dst.addr);
		if (!FUNC15(ndo, fc, src.addr, p, length)) {
			FUNC7((ndo, "%s", tstr));
			return hdrlen;
		}
		break;
	case T_CTRL:
		if (!FUNC8(ndo, fc, p - hdrlen)) {
			FUNC7((ndo, "%s", tstr));
			return hdrlen;
		}
		break;
	case T_DATA:
		if (FUNC0(FUNC4(fc)))
			return hdrlen;	/* no-data frame */
		/* There may be a problem w/ AP not having this bit set */
		if (FUNC3(fc)) {
			FUNC7((ndo, "Data"));
			if (!FUNC17(ndo, p)) {
				FUNC7((ndo, "%s", tstr));
				return hdrlen;
			}
		} else {
			FUNC11(fc, p - hdrlen, &src.addr, &dst.addr);
			llc_hdrlen = FUNC14(ndo, p, length, caplen, &src, &dst);
			if (llc_hdrlen < 0) {
				/*
				 * Some kinds of LLC packet we cannot
				 * handle intelligently
				 */
				if (!ndo->ndo_suppress_default_print)
					FUNC6(p, caplen);
				llc_hdrlen = -llc_hdrlen;
			}
			hdrlen += llc_hdrlen;
		}
		break;
	default:
		/* We shouldn't get here - we should already have quit */
		break;
	}

	return hdrlen;
}