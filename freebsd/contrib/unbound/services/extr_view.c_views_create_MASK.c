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
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  view_cmp ; 

struct views* 
FUNC4(void)
{
	struct views* v = (struct views*)FUNC0(1, 
		sizeof(*v));
	if(!v)
		return NULL;
	FUNC3(&v->vtree, &view_cmp);
	FUNC2(&v->lock);
	FUNC1(&v->lock, &v->vtree, sizeof(v->vtree));
	return v;
}