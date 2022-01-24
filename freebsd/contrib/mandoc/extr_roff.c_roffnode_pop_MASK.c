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
struct roffnode {scalar_t__ tok; struct roffnode* end; struct roffnode* name; struct roffnode* parent; } ;
struct roff {struct roffnode* last; } ;

/* Variables and functions */
 scalar_t__ ROFF_while ; 
 int /*<<< orphan*/  FUNC0 (struct roffnode*) ; 

__attribute__((used)) static int
FUNC1(struct roff *r)
{
	struct roffnode	*p;
	int		 inloop;

	p = r->last;
	inloop = p->tok == ROFF_while;
	r->last = p->parent;
	FUNC0(p->name);
	FUNC0(p->end);
	FUNC0(p);
	return inloop;
}