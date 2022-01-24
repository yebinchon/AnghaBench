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
struct iter_hints_stub {int /*<<< orphan*/  node; } ;
struct iter_hints {int /*<<< orphan*/  tree; } ;
struct delegpt {int /*<<< orphan*/  namelabs; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iter_hints*,int /*<<< orphan*/ ,struct delegpt*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_hints_stub*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int 
FUNC5(struct iter_hints* hints, uint16_t c, struct delegpt* dp,
	int noprime)
{
	struct iter_hints_stub *z;
	if((z=(struct iter_hints_stub*)FUNC2(&hints->tree,
		dp->name, dp->namelen, dp->namelabs, c)) != NULL) {
		(void)FUNC4(&hints->tree, &z->node);
		FUNC1(z);
	}
	if(!FUNC0(hints, c, dp, noprime))
		return 0;
	FUNC3(&hints->tree);
	return 1;
}