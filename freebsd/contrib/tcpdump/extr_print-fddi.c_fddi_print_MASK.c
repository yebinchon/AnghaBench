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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct lladdr_info {void* addr_string; scalar_t__ addr; } ;
struct fddi_header {int fddi_fc; } ;
struct ether_header {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ether_header*) ; 
 scalar_t__ FUNC1 (struct ether_header*) ; 
 int FDDIFC_CLFF ; 
 int FDDIFC_LLC_ASYNC ; 
 int FDDIFC_SMT ; 
 scalar_t__ FDDI_HDRLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 void* etheraddr_string ; 
 int /*<<< orphan*/  FUNC4 (struct fddi_header const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct fddi_header const*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ; 

u_int
FUNC8(netdissect_options *ndo, const u_char *p, u_int length, u_int caplen)
{
	const struct fddi_header *fddip = (const struct fddi_header *)p;
	struct ether_header ehdr;
	struct lladdr_info src, dst;
	int llc_hdrlen;

	if (caplen < FDDI_HDRLEN) {
		FUNC3((ndo, "[|fddi]"));
		return (caplen);
	}

	/*
	 * Get the FDDI addresses into a canonical form
	 */
	FUNC4(fddip, (char *)FUNC1(&ehdr), (char *)FUNC0(&ehdr));

	if (ndo->ndo_eflag)
		FUNC5(ndo, fddip, length, FUNC1(&ehdr), FUNC0(&ehdr));

	src.addr = FUNC1(&ehdr);
	src.addr_string = etheraddr_string;
	dst.addr = FUNC0(&ehdr);
	dst.addr_string = etheraddr_string;

	/* Skip over FDDI MAC header */
	length -= FDDI_HDRLEN;
	p += FDDI_HDRLEN;
	caplen -= FDDI_HDRLEN;

	/* Frame Control field determines interpretation of packet */
	if ((fddip->fddi_fc & FDDIFC_CLFF) == FDDIFC_LLC_ASYNC) {
		/* Try to print the LLC-layer header & higher layers */
		llc_hdrlen = FUNC7(ndo, p, length, caplen, &src, &dst);
		if (llc_hdrlen < 0) {
			/*
			 * Some kinds of LLC packet we cannot
			 * handle intelligently
			 */
			if (!ndo->ndo_suppress_default_print)
				FUNC2(p, caplen);
			llc_hdrlen = -llc_hdrlen;
		}
	} else if ((fddip->fddi_fc & FDDIFC_CLFF) == FDDIFC_SMT) {
		FUNC6(ndo, p, caplen);
		llc_hdrlen = 0;
	} else {
		/* Some kinds of FDDI packet we cannot handle intelligently */
		if (!ndo->ndo_eflag)
			FUNC5(ndo, fddip, length + FDDI_HDRLEN, FUNC1(&ehdr),
			    FUNC0(&ehdr));
		if (!ndo->ndo_suppress_default_print)
			FUNC2(p, caplen);
		llc_hdrlen = 0;
	}
	return (FDDI_HDRLEN + llc_hdrlen);
}