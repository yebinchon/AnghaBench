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
struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {struct TYPE_2__* pdfobjs; struct TYPE_2__* psmarg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*) ; 

void
FUNC2(void *arg)
{
	struct termp	*p;

	p = (struct termp *)arg;

	FUNC0(p->ps->psmarg);
	FUNC0(p->ps->pdfobjs);

	FUNC0(p->ps);
	FUNC1(p);
}