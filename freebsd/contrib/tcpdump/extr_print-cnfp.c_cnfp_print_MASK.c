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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

void
FUNC6(netdissect_options *ndo, const u_char *cp)
{
	int ver;

	/*
	 * First 2 bytes are the version number.
	 */
	FUNC2(*cp, 2);
	ver = FUNC0(cp);
	switch (ver) {

	case 1:
		FUNC3(ndo, cp);
		break;

	case 5:
		FUNC4(ndo, cp);
		break;

	case 6:
		FUNC5(ndo, cp);
		break;

	default:
		FUNC1((ndo, "NetFlow v%x", ver));
		break;
	}
	return;

trunc:
	FUNC1((ndo, "[|cnfp]"));
	return;
}