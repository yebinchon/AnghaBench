#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lno; int soff; int /*<<< orphan*/  coff; } ;
typedef  TYPE_1__ SMAP ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_LEFTRIGHT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

int
FUNC3(SCR *sp, SMAP *p, SMAP *t)
{
	FUNC1(t);
	if (FUNC0(sp, O_LEFTRIGHT)) {
		t->lno = p->lno - 1;
		t->coff = p->coff;
	} else {
		if (p->soff != 1) {
			t->lno = p->lno;
			t->soff = p->soff - 1;
		} else {
			t->lno = p->lno - 1;
			t->soff = FUNC2(sp, t->lno, NULL);
		}
	}
	return (t->lno == 0);
}