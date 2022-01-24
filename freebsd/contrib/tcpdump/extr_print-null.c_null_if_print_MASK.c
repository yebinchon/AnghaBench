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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct pcap_pkthdr {scalar_t__ len; scalar_t__ caplen; } ;
struct TYPE_10__ {int /*<<< orphan*/  ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  family ;

/* Variables and functions */
#define  BSD_AFNUM_APPLETALK 134 
#define  BSD_AFNUM_INET 133 
#define  BSD_AFNUM_INET6_BSD 132 
#define  BSD_AFNUM_INET6_DARWIN 131 
#define  BSD_AFNUM_INET6_FREEBSD 130 
#define  BSD_AFNUM_IPX 129 
#define  BSD_AFNUM_ISO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ NULL_HDRLEN ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,scalar_t__) ; 

u_int
FUNC10(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
	u_int length = h->len;
	u_int caplen = h->caplen;
	u_int family;

	if (caplen < NULL_HDRLEN) {
		FUNC1((ndo, "[|null]"));
		return (NULL_HDRLEN);
	}

	FUNC8((char *)&family, (const char *)p, sizeof(family));

	/*
	 * This isn't necessarily in our host byte order; if this is
	 * a DLT_LOOP capture, it's in network byte order, and if
	 * this is a DLT_NULL capture from a machine with the opposite
	 * byte-order, it's in the opposite byte order from ours.
	 *
	 * If the upper 16 bits aren't all zero, assume it's byte-swapped.
	 */
	if ((family & 0xFFFF0000) != 0)
		family = FUNC2(family);

	if (ndo->ndo_eflag)
		FUNC9(ndo, family, length);

	length -= NULL_HDRLEN;
	caplen -= NULL_HDRLEN;
	p += NULL_HDRLEN;

	switch (family) {

	case BSD_AFNUM_INET:
		FUNC5(ndo, p, length);
		break;

	case BSD_AFNUM_INET6_BSD:
	case BSD_AFNUM_INET6_FREEBSD:
	case BSD_AFNUM_INET6_DARWIN:
		FUNC4(ndo, p, length);
		break;

	case BSD_AFNUM_ISO:
		FUNC7(ndo, p, length);
		break;

	case BSD_AFNUM_APPLETALK:
		FUNC3(ndo, p, length);
		break;

	case BSD_AFNUM_IPX:
		FUNC6(ndo, p, length);
		break;

	default:
		/* unknown AF_ value */
		if (!ndo->ndo_eflag)
			FUNC9(ndo, family, length + NULL_HDRLEN);
		if (!ndo->ndo_suppress_default_print)
			FUNC0(p, caplen);
	}

	return (NULL_HDRLEN);
}