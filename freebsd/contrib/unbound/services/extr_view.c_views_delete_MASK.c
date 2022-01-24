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
struct views {int /*<<< orphan*/  vtree; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  delviewnode ; 
 int /*<<< orphan*/  FUNC0 (struct views*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void 
FUNC3(struct views* v)
{
	if(!v)
		return;
	FUNC1(&v->lock);
	FUNC2(&v->vtree, delviewnode, NULL);
	FUNC0(v);
}