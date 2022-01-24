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
struct iter_forwards {int /*<<< orphan*/  tree; } ;
struct iter_forward_zone {int /*<<< orphan*/  node; } ;
struct delegpt {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iter_forwards*,int /*<<< orphan*/ ,struct delegpt*) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_forwards*) ; 
 struct iter_forward_zone* FUNC2 (struct iter_forwards*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iter_forward_zone*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int 
FUNC5(struct iter_forwards* fwd, uint16_t c, struct delegpt* dp)
{
	struct iter_forward_zone *z;
	if((z=FUNC2(fwd, c, dp->name)) != NULL) {
		(void)FUNC4(fwd->tree, &z->node);
		FUNC3(z);
	}
	if(!FUNC0(fwd, c, dp))
		return 0;
	FUNC1(fwd);
	return 1;
}