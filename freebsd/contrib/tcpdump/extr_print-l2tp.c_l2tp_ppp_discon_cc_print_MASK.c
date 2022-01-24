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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  l2tp_cc_direction2str ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo, const u_char *dat, u_int length)
{
	const uint16_t *ptr = (const uint16_t *)dat;

	if (length < 5) {
		FUNC2((ndo, "AVP too short"));
		return;
	}
	/* Disconnect Code */
	FUNC2((ndo, "%04x, ", FUNC0(dat)));
	dat += 2;
	length -= 2;
	/* Control Protocol Number */
	FUNC2((ndo, "%04x ",  FUNC0(dat)));
	dat += 2;
	length -= 2;
	/* Direction */
	FUNC2((ndo, "%s", FUNC4(l2tp_cc_direction2str,
			     "Direction-#%u", FUNC1(ptr))));
	ptr++;
	length--;

	if (length != 0) {
		FUNC2((ndo, " "));
		FUNC3(ndo, (const u_char *)ptr, length);
	}
}