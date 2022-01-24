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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iter_hints_stub {int /*<<< orphan*/  node; scalar_t__ noprime; struct delegpt* dp; } ;
struct iter_hints {int /*<<< orphan*/  tree; } ;
struct delegpt {int /*<<< orphan*/  name; int /*<<< orphan*/  namelabs; int /*<<< orphan*/  namelen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delegpt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iter_hints_stub*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct iter_hints* hints, uint16_t c, struct delegpt* dp,
	int noprime)
{
	struct iter_hints_stub* node = (struct iter_hints_stub*)FUNC4(
		sizeof(struct iter_hints_stub));
	if(!node) {
		FUNC0(dp);
		return 0;
	}
	node->dp = dp;
	node->noprime = (uint8_t)noprime;
	if(!FUNC5(&hints->tree, &node->node, dp->name, dp->namelen,
		dp->namelabs, c)) {
		char buf[257];
		FUNC1(dp->name, buf);
		FUNC3("second hints for zone %s ignored.", buf);
		FUNC0(dp);
		FUNC2(node);
	}
	return 1;
}