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
struct roff {int mstacksz; int /*<<< orphan*/  reqtab; struct roff* mstack; struct roff* argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct roff*) ; 
 int /*<<< orphan*/  FUNC1 (struct roff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct roff *r)
{
	int		 i;

	FUNC1(r);
	for (i = 0; i < r->mstacksz; i++)
		FUNC0(r->mstack[i].argv);
	FUNC0(r->mstack);
	FUNC2(r->reqtab);
	FUNC0(r);
}