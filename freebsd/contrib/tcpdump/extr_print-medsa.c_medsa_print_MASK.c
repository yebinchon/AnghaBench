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
typedef  scalar_t__ u_short ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct medsa_pkthdr {int /*<<< orphan*/  ether_type; } ;
struct lladdr_info {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ ETHERMTU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct medsa_pkthdr const) ; 
 int /*<<< orphan*/  FUNC4 (struct medsa_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct medsa_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct medsa_pkthdr const*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/  const*,int,int,struct lladdr_info const*,struct lladdr_info const*) ; 
 int /*<<< orphan*/  ethertype_values ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int,int,struct lladdr_info const*,struct lladdr_info const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct medsa_pkthdr const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC11(netdissect_options *ndo,
	    const u_char *bp, u_int length, u_int caplen,
	    const struct lladdr_info *src, const struct lladdr_info *dst)
{
	const struct medsa_pkthdr *medsa;
	u_short ether_type;

	medsa = (const struct medsa_pkthdr *)bp;
	FUNC3(*medsa);

	if (!ndo->ndo_eflag)
		FUNC2((ndo, "MEDSA %d.%d:%d: ",
			  FUNC4(medsa), FUNC5(medsa), FUNC6(medsa)));
	else
		FUNC9(ndo, medsa, caplen);

	bp += 8;
	length -= 8;
	caplen -= 8;

	ether_type = FUNC0(&medsa->ether_type);
	if (ether_type <= ETHERMTU) {
		/* Try to print the LLC-layer header & higher layers */
		if (FUNC8(ndo, bp, length, caplen, src, dst) < 0) {
			/* packet type not known, print raw packet */
			if (!ndo->ndo_suppress_default_print)
				FUNC1(bp, caplen);
		}
	} else {
		if (ndo->ndo_eflag)
			FUNC2((ndo, "ethertype %s (0x%04x) ",
				  FUNC10(ethertype_values, "Unknown",
					  ether_type),
				  ether_type));
		if (FUNC7(ndo, ether_type, bp, length, caplen, src, dst) == 0) {
			/* ether_type not known, print raw packet */
			if (!ndo->ndo_eflag)
				FUNC2((ndo, "ethertype %s (0x%04x) ",
					  FUNC10(ethertype_values, "Unknown",
						  ether_type),
					  ether_type));

			if (!ndo->ndo_suppress_default_print)
				FUNC1(bp, caplen);
		}
	}
	return;
trunc:
	FUNC2((ndo, "%s", tstr));
}