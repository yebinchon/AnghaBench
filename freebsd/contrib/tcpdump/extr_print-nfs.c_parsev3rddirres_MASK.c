#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int*) ; 

__attribute__((used)) static const uint32_t *
FUNC4(netdissect_options *ndo,
                const uint32_t *dp, int verbose)
{
	int er;

	if (!(dp = FUNC3(ndo, dp, &er)))
		return (0);
	if (ndo->ndo_vflag)
		FUNC0((ndo, " POST:"));
	if (!(dp = FUNC2(ndo, dp, verbose)))
		return (0);
	if (er)
		return dp;
	if (ndo->ndo_vflag) {
		FUNC1(dp[1]);
		FUNC0((ndo, " verf %08x%08x", dp[0], dp[1]));
		dp += 2;
	}
	return dp;
trunc:
	return (NULL);
}