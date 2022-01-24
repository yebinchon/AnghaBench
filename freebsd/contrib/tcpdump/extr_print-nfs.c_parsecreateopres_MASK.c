#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int*) ; 

__attribute__((used)) static const uint32_t *
FUNC7(netdissect_options *ndo,
                 const uint32_t *dp, int verbose)
{
	int er;

	if (!(dp = FUNC6(ndo, dp, &er)))
		return (0);
	if (er)
		dp = FUNC4(ndo, dp, verbose);
	else {
		FUNC2(dp[0]);
		if (!FUNC0(&dp[0]))
			return (dp + 1);
		dp++;
		if (!(dp = FUNC5(ndo, dp, 1)))
			return (0);
		if (verbose) {
			if (!(dp = FUNC3(ndo, dp, verbose)))
				return (0);
			if (ndo->ndo_vflag > 1) {
				FUNC1((ndo, " dir attr:"));
				dp = FUNC4(ndo, dp, verbose);
			}
		}
	}
	return (dp);
trunc:
	return (NULL);
}