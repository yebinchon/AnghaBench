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
struct views {int /*<<< orphan*/  lock; int /*<<< orphan*/  vtree; } ;
struct view {int /*<<< orphan*/  lock; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct view* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct view*) ; 

__attribute__((used)) static struct view*
FUNC7(struct views* vs, char* name)
{
	struct view* v = FUNC5(name);
	if(!v) {
		FUNC2("out of memory");
		return NULL;
	}

	/* add to rbtree */
	FUNC1(&vs->lock);
	FUNC1(&v->lock);
	if(!FUNC4(&vs->vtree, &v->node)) {
		FUNC3("duplicate view: %s", name);
		FUNC0(&v->lock);
		FUNC6(v);
		FUNC0(&vs->lock);
		return NULL;
	}
	FUNC0(&vs->lock);
	return v;
}