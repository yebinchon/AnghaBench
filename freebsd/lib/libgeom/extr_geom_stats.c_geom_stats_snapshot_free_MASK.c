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
struct snapshot {struct snapshot* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snapshot*) ; 

void
FUNC1(void *arg)
{
	struct snapshot *sp;

	sp = arg;
	FUNC0(sp->ptr);
	FUNC0(sp);
}