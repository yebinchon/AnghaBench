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
struct val_anchors {struct val_anchors* autr; int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  anchor_cmp ; 
 int /*<<< orphan*/  FUNC0 (struct val_anchors*) ; 
 struct val_anchors* FUNC1 () ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct val_anchors*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct val_anchors* 
FUNC6(void)
{
	struct val_anchors* a = (struct val_anchors*)FUNC2(1, sizeof(*a));
	if(!a)
		return NULL;
	a->tree = FUNC5(anchor_cmp);
	if(!a->tree) {
		FUNC0(a);
		return NULL;
	}
	a->autr = FUNC1();
	if(!a->autr) {
		FUNC0(a);
		return NULL;
	}
	FUNC3(&a->lock);
	FUNC4(&a->lock, a, sizeof(*a));
	FUNC4(&a->lock, a->autr, sizeof(*a->autr));
	return a;
}