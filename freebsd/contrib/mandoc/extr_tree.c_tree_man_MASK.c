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
struct roff_meta {scalar_t__ hasbody; TYPE_1__* first; } ;
struct TYPE_2__ {int /*<<< orphan*/  child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_meta const*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(void *arg, const struct roff_meta *man)
{
	FUNC1(man);
	if (man->hasbody == 0)
		FUNC3("body  = empty");
	FUNC2('\n');
	FUNC0(man->first->child, 0);
}