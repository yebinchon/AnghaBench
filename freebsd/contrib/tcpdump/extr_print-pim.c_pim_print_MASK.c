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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct pim {int /*<<< orphan*/  pim_typever; int /*<<< orphan*/  pim_rsv; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  pimv2_type_values ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC6(netdissect_options *ndo,
          register const u_char *bp, register u_int len, const u_char *bp2)
{
	register const struct pim *pim = (const struct pim *)bp;

#ifdef notyet			/* currently we see only version and type */
	ND_TCHECK(pim->pim_rsv);
#endif

	FUNC1(pim->pim_typever);
	switch (FUNC3(pim->pim_typever)) {
	case 2:
		if (!ndo->ndo_vflag) {
			FUNC0((ndo, "PIMv%u, %s, length %u",
			          FUNC3(pim->pim_typever),
			          FUNC5(pimv2_type_values,"Unknown Type",FUNC2(pim->pim_typever)),
			          len));
			return;
		} else {
			FUNC0((ndo, "PIMv%u, length %u\n\t%s",
			          FUNC3(pim->pim_typever),
			          len,
			          FUNC5(pimv2_type_values,"Unknown Type",FUNC2(pim->pim_typever))));
			FUNC4(ndo, bp, len, bp2);
		}
		break;
	default:
		FUNC0((ndo, "PIMv%u, length %u",
		          FUNC3(pim->pim_typever),
		          len));
		break;
	}
	return;

trunc:
	FUNC0((ndo, "[|pim]"));
	return;
}