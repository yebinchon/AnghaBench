#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_9__ {scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  ATM_LANE 135 
#define  ATM_LLC 134 
 int /*<<< orphan*/  ATM_OAM_HEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
#define  VCI_BCC 133 
#define  VCI_ILMIC 132 
#define  VCI_METAC 131 
#define  VCI_OAMF4EC 130 
#define  VCI_OAMF4SC 129 
#define  VCI_PPC 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 

void
FUNC6(netdissect_options *ndo,
          u_int vpi, u_int vci, u_int traftype, const u_char *p, u_int length,
          u_int caplen)
{
	if (ndo->ndo_eflag)
		FUNC0((ndo, "VPI:%u VCI:%u ", vpi, vci));

	if (vpi == 0) {
		switch (vci) {

		case VCI_PPC:
			FUNC4(ndo, p);
			return;

		case VCI_BCC:
			FUNC0((ndo, "broadcast sig: "));
			return;

		case VCI_OAMF4SC: /* fall through */
		case VCI_OAMF4EC:
			FUNC3(ndo, p, length, ATM_OAM_HEC);
			return;

		case VCI_METAC:
			FUNC0((ndo, "meta: "));
			return;

		case VCI_ILMIC:
			FUNC0((ndo, "ilmi: "));
			FUNC5(ndo, p, length);
			return;
		}
	}

	switch (traftype) {

	case ATM_LLC:
	default:
		/*
		 * Assumes traffic is LLC if unknown.
		 */
		FUNC1(ndo, p, length, caplen);
		break;

	case ATM_LANE:
		FUNC2(ndo, p, length, caplen);
		break;
	}
}