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
struct iter_hints_stub {int /*<<< orphan*/  node; } ;
struct iter_hints {int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_hints_stub*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void 
FUNC5(struct iter_hints* hints, uint16_t c, uint8_t* nm)
{
	struct iter_hints_stub *z;
	size_t len;
	int labs = FUNC0(nm, &len);
	if(!(z=(struct iter_hints_stub*)FUNC2(&hints->tree,
		nm, len, labs, c)))
		return; /* nothing to do */
	(void)FUNC4(&hints->tree, &z->node);
	FUNC1(z);
	FUNC3(&hints->tree);
}