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
struct kqop {scalar_t__ kq; struct kqop* events; struct kqop* changes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kqop*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqop*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(void *arg)
{
	struct kqop *kqop = arg;

	if (kqop->changes)
		FUNC1(kqop->changes);
	if (kqop->events)
		FUNC1(kqop->events);
	if (kqop->kq)
		FUNC0(kqop->kq);
	FUNC2(kqop, 0, sizeof(struct kqop));
	FUNC1(kqop);
}