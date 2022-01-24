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
struct TYPE_2__ {struct view* key; } ;
struct view {int /*<<< orphan*/  name; int /*<<< orphan*/  lock; TYPE_1__ node; } ;
typedef  int /*<<< orphan*/  rbnode_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct view*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static struct view*
FUNC5(char* name)
{
	struct view* v = (struct view*)FUNC0(1, sizeof(*v));
	if(!v)
		return NULL;
	v->node.key = v;
	if(!(v->name = FUNC4(name))) {
		FUNC1(v);
		return NULL;
	}
	FUNC3(&v->lock);
	FUNC2(&v->lock, &v->name, sizeof(*v)-sizeof(rbnode_type));
	return v;
}