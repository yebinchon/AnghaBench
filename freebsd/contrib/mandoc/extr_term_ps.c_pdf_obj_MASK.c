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
struct TYPE_2__ {size_t pdfobjsz; int /*<<< orphan*/  pdfbytes; int /*<<< orphan*/ * pdfobjs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct termp*,char*,size_t) ; 

__attribute__((used)) static void
FUNC3(struct termp *p, size_t obj)
{

	FUNC0(obj > 0);

	if ((obj - 1) >= p->ps->pdfobjsz) {
		p->ps->pdfobjsz = obj + 128;
		p->ps->pdfobjs = FUNC1(p->ps->pdfobjs,
		    p->ps->pdfobjsz, sizeof(size_t));
	}

	p->ps->pdfobjs[(int)obj - 1] = p->ps->pdfbytes;
	FUNC2(p, "%zu 0 obj\n", obj);
}