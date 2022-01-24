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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int GRE_VERS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC5(netdissect_options *ndo, const u_char *bp, u_int length)
{
	u_int len = length, vers;

	FUNC2(*bp, 2);
	if (len < 2)
		goto trunc;
	vers = FUNC0(bp) & GRE_VERS_MASK;
        FUNC1((ndo, "GREv%u",vers));

        switch(vers) {
        case 0:
            FUNC3(ndo, bp, len);
            break;
        case 1:
            FUNC4(ndo, bp, len);
            break;
	default:
            FUNC1((ndo, " ERROR: unknown-version"));
            break;
        }
        return;

trunc:
	FUNC1((ndo, "%s", tstr));
	return;
}