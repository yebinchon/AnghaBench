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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  LINKADDR_ATM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(netdissect_options *ndo,
		  const u_char *ha, u_int ha_len, const u_char *srca,
    u_int srca_len)
{
	if (ha_len == 0)
		FUNC0((ndo, "<No address>"));
	else {
		FUNC0((ndo, "%s", FUNC1(ndo, ha, LINKADDR_ATM, ha_len)));
		if (srca_len != 0)
			FUNC0((ndo, ",%s",
				  FUNC1(ndo, srca, LINKADDR_ATM, srca_len)));
	}
}