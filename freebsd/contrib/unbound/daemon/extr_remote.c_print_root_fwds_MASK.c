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
typedef  int /*<<< orphan*/  uint8_t ;
struct iter_forwards {int dummy; } ;
struct delegpt {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 struct delegpt* FUNC0 (struct iter_forwards*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct delegpt*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC5(RES* ssl, struct iter_forwards* fwds, uint8_t* root)
{
	struct delegpt* dp;
	dp = FUNC0(fwds, root, LDNS_RR_CLASS_IN);
	if(!dp)
		return FUNC4(ssl, "off (using root hints)\n");
	/* if dp is returned it must be the root */
	FUNC1(FUNC2(dp->name, root)==0);
	return FUNC3(ssl, NULL, root, LDNS_RR_CLASS_IN, dp);
}