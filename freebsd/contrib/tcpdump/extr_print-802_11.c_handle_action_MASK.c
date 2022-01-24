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
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_5__ {scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC8(netdissect_options *ndo,
              const uint8_t *src, const u_char *p, u_int length)
{
	if (!FUNC1(*p, 2))
		return 0;
	if (length < 2)
		return 0;
	if (ndo->ndo_eflag) {
		FUNC0((ndo, ": "));
	} else {
		FUNC0((ndo, " (%s): ", FUNC7(ndo, src)));
	}
	switch (p[0]) {
	case 0: FUNC0((ndo, "Spectrum Management Act#%d", p[1])); break;
	case 1: FUNC0((ndo, "QoS Act#%d", p[1])); break;
	case 2: FUNC0((ndo, "DLS Act#%d", p[1])); break;
	case 3: FUNC0((ndo, "BA ")); FUNC2(p[1]); break;
	case 7: FUNC0((ndo, "HT ")); FUNC3(p[1]); break;
	case 13: FUNC0((ndo, "MeshAction ")); FUNC4(p[1]); break;
	case 14:
		FUNC0((ndo, "MultiohopAction "));
		FUNC5(p[1]); break;
	case 15:
		FUNC0((ndo, "SelfprotectAction "));
		FUNC6(p[1]); break;
	case 127: FUNC0((ndo, "Vendor Act#%d", p[1])); break;
	default:
		FUNC0((ndo, "Reserved(%d) Act#%d", p[0], p[1]));
		break;
	}
	return 1;
}