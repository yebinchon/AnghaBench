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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct ether_header {int /*<<< orphan*/  ether_length_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_qflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ether_header const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ether_header const*) ; 
 scalar_t__ ETHERMTU ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethertype_values ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC6(netdissect_options *ndo,
                const u_char *bp, u_int length)
{
	register const struct ether_header *ep;
	uint16_t length_type;

	ep = (const struct ether_header *)bp;

	FUNC3((ndo, "%s > %s",
		     FUNC4(ndo, FUNC1(ep)),
		     FUNC4(ndo, FUNC0(ep))));

	length_type = FUNC2(&ep->ether_length_type);
	if (!ndo->ndo_qflag) {
	        if (length_type <= ETHERMTU) {
		        FUNC3((ndo, ", 802.3"));
			length = length_type;
		} else
		        FUNC3((ndo, ", ethertype %s (0x%04x)",
				       FUNC5(ethertype_values,"Unknown", length_type),
                                       length_type));
        } else {
                if (length_type <= ETHERMTU) {
                        FUNC3((ndo, ", 802.3"));
			length = length_type;
		} else
                        FUNC3((ndo, ", %s", FUNC5(ethertype_values,"Unknown Ethertype (0x%04x)", length_type)));
        }

	FUNC3((ndo, ", length %u: ", length));
}