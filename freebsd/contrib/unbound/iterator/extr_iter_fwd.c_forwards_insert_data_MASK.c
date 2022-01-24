#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iter_forwards {int /*<<< orphan*/  tree; } ;
struct TYPE_2__ {struct iter_forward_zone* key; } ;
struct iter_forward_zone {size_t namelen; int namelabs; struct iter_forward_zone* name; TYPE_1__ node; struct delegpt* dp; int /*<<< orphan*/  dclass; } ;
struct delegpt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delegpt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iter_forward_zone*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct iter_forward_zone* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(struct iter_forwards* fwd, uint16_t c, uint8_t* nm, 
	size_t nmlen, int nmlabs, struct delegpt* dp)
{
	struct iter_forward_zone* node = (struct iter_forward_zone*)FUNC4(
		sizeof(struct iter_forward_zone));
	if(!node) {
		FUNC0(dp);
		return 0;
	}
	node->node.key = node;
	node->dclass = c;
	node->name = FUNC5(nm, nmlen);
	if(!node->name) {
		FUNC0(dp);
		FUNC2(node);
		return 0;
	}
	node->namelen = nmlen;
	node->namelabs = nmlabs;
	node->dp = dp;
	if(!FUNC6(fwd->tree, &node->node)) {
		char buf[257];
		FUNC1(nm, buf);
		FUNC3("duplicate forward zone %s ignored.", buf);
		FUNC0(dp);
		FUNC2(node->name);
		FUNC2(node);
	}
	return 1;
}