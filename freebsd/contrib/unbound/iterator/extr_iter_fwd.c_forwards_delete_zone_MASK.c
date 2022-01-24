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
typedef  int /*<<< orphan*/  uint16_t ;
struct iter_forwards {int /*<<< orphan*/  tree; } ;
struct iter_forward_zone {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iter_forwards*) ; 
 struct iter_forward_zone* FUNC1 (struct iter_forwards*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iter_forward_zone*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void 
FUNC4(struct iter_forwards* fwd, uint16_t c, uint8_t* nm)
{
	struct iter_forward_zone *z;
	if(!(z=FUNC1(fwd, c, nm)))
		return; /* nothing to do */
	(void)FUNC3(fwd->tree, &z->node);
	FUNC2(z);
	FUNC0(fwd);
}