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
struct views {int /*<<< orphan*/  lock; int /*<<< orphan*/  vtree; } ;
struct TYPE_2__ {struct view** key; } ;
struct view {char* name; int /*<<< orphan*/  lock; TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

struct view*
FUNC4(struct views* vs, const char* name, int write)
{
	struct view* v;
	struct view key;
	key.node.key = &v;
	key.name = (char *)name;
	FUNC0(&vs->lock);
	if(!(v = (struct view*)FUNC3(&vs->vtree, &key.node))) {
		FUNC1(&vs->lock);
		return 0;
	}
	if(write) {
		FUNC2(&v->lock);
	} else {
		FUNC0(&v->lock);
	}
	FUNC1(&vs->lock);
	return v;
}