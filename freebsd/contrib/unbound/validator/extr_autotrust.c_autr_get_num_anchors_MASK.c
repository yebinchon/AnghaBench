#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct val_anchors {int /*<<< orphan*/  lock; TYPE_2__* autr; } ;
struct TYPE_3__ {size_t count; } ;
struct TYPE_4__ {TYPE_1__ probe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

size_t 
FUNC2(struct val_anchors* anchors)
{
	size_t res = 0;
	if(!anchors)
		return 0;
	FUNC0(&anchors->lock);
	if(anchors->autr)
		res = anchors->autr->probe.count;
	FUNC1(&anchors->lock);
	return res;
}