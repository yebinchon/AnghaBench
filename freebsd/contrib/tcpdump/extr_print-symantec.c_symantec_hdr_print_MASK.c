#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct symantec_header {int /*<<< orphan*/  ether_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  ndo_qflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ ETHERMTU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ethertype_values ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC3(netdissect_options *ndo, register const u_char *bp, u_int length)
{
	register const struct symantec_header *sp;
	uint16_t etype;

	sp = (const struct symantec_header *)bp;

	etype = FUNC0(&sp->ether_type);
	if (!ndo->ndo_qflag) {
	        if (etype <= ETHERMTU)
		          FUNC1((ndo, "invalid ethertype %u", etype));
                else
		          FUNC1((ndo, "ethertype %s (0x%04x)",
				       FUNC2(ethertype_values,"Unknown", etype),
                                       etype));
        } else {
                if (etype <= ETHERMTU)
                          FUNC1((ndo, "invalid ethertype %u", etype));
                else
                          FUNC1((ndo, "%s", FUNC2(ethertype_values,"Unknown Ethertype (0x%04x)", etype)));
        }

	FUNC1((ndo, ", length %u: ", length));
}