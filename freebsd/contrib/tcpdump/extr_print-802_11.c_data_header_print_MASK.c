#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR1 ; 
 int /*<<< orphan*/  ADDR2 ; 
 int /*<<< orphan*/  ADDR3 ; 
 int /*<<< orphan*/  ADDR4 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(netdissect_options *ndo, uint16_t fc, const u_char *p)
{
	u_int subtype = FUNC4(fc);

	if (FUNC0(subtype) || FUNC1(subtype) ||
	    FUNC2(subtype)) {
		FUNC6((ndo, "CF "));
		if (FUNC0(subtype)) {
			if (FUNC1(subtype))
				FUNC6((ndo, "Ack/Poll"));
			else
				FUNC6((ndo, "Ack"));
		} else {
			if (FUNC1(subtype))
				FUNC6((ndo, "Poll"));
		}
		if (FUNC2(subtype))
			FUNC6((ndo, "+QoS"));
		FUNC6((ndo, " "));
	}

#define ADDR1  (p + 4)
#define ADDR2  (p + 10)
#define ADDR3  (p + 16)
#define ADDR4  (p + 24)

	if (!FUNC5(fc) && !FUNC3(fc)) {
		FUNC6((ndo, "DA:%s SA:%s BSSID:%s ",
		    FUNC7(ndo, ADDR1), FUNC7(ndo, ADDR2),
		    FUNC7(ndo, ADDR3)));
	} else if (!FUNC5(fc) && FUNC3(fc)) {
		FUNC6((ndo, "DA:%s BSSID:%s SA:%s ",
		    FUNC7(ndo, ADDR1), FUNC7(ndo, ADDR2),
		    FUNC7(ndo, ADDR3)));
	} else if (FUNC5(fc) && !FUNC3(fc)) {
		FUNC6((ndo, "BSSID:%s SA:%s DA:%s ",
		    FUNC7(ndo, ADDR1), FUNC7(ndo, ADDR2),
		    FUNC7(ndo, ADDR3)));
	} else if (FUNC5(fc) && FUNC3(fc)) {
		FUNC6((ndo, "RA:%s TA:%s DA:%s SA:%s ",
		    FUNC7(ndo, ADDR1), FUNC7(ndo, ADDR2),
		    FUNC7(ndo, ADDR3), FUNC7(ndo, ADDR4)));
	}

#undef ADDR1
#undef ADDR2
#undef ADDR3
#undef ADDR4
}