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
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ ndo_qflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const) ; 
 scalar_t__* FUNC3 (TYPE_1__*,scalar_t__ const*,int*) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
             const uint32_t *dp)
{
	int er;

	dp = FUNC3(ndo, dp, &er);
	if (dp == NULL)
		return (0);
	if (er)
		return (1);
	if (ndo->ndo_qflag)
		return (1);

	FUNC2(dp[2]);
	FUNC1((ndo, " offset 0x%x size %d ",
	       FUNC0(&dp[0]), FUNC0(&dp[1])));
	if (dp[2] != 0)
		FUNC1((ndo, " eof"));

	return (1);
trunc:
	return (0);
}