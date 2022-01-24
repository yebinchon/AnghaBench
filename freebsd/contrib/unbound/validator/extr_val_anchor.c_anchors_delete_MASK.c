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
struct val_anchors {struct val_anchors* autr; struct val_anchors* tree; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  anchors_delfunc ; 
 int /*<<< orphan*/  FUNC0 (struct val_anchors*) ; 
 int /*<<< orphan*/  FUNC1 (struct val_anchors*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct val_anchors*) ; 
 int /*<<< orphan*/  FUNC4 (struct val_anchors*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void 
FUNC5(struct val_anchors* anchors)
{
	if(!anchors)
		return;
	FUNC3(&anchors->lock, anchors->autr);
	FUNC3(&anchors->lock, anchors);
	FUNC2(&anchors->lock);
	if(anchors->tree)
		FUNC4(anchors->tree, anchors_delfunc, NULL);
	FUNC1(anchors->tree);
	FUNC0(anchors->autr);
	FUNC1(anchors);
}