#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nelem; int size; TYPE_1__** tab; } ;
struct TYPE_8__ {unsigned int tval; int /*<<< orphan*/  fval; void* sval; void* nval; struct TYPE_8__* cnext; int /*<<< orphan*/  ctype; int /*<<< orphan*/  csub; } ;
typedef  TYPE_1__ Cell ;
typedef  int /*<<< orphan*/  Awkfloat ;
typedef  TYPE_2__ Array ;

/* Variables and functions */
 int /*<<< orphan*/  CUNK ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FULLTAB ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  OCELL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*,int) ; 
 TYPE_1__* FUNC4 (char const*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 void* FUNC7 (char const*) ; 

Cell *FUNC8(const char *n, const char *s, Awkfloat f, unsigned t, Array *tp)
{
	int h;
	Cell *p;

	if (n != NULL && (p = FUNC4(n, tp)) != NULL) {
		   FUNC2( ("setsymtab found %p: n=%s s=\"%s\" f=%g t=%o\n",
			(void)p, FUNC1(p->nval), FUNC1(p->sval), p->fval, p->tval) );
		return(p);
	}
	p = (Cell *) FUNC5(sizeof(Cell));
	if (p == NULL)
		FUNC0("out of space for symbol table at %s", n);
	p->nval = FUNC7(n);
	p->sval = s ? FUNC7(s) : FUNC7("");
	p->fval = f;
	p->tval = t;
	p->csub = CUNK;
	p->ctype = OCELL;
	tp->nelem++;
	if (tp->nelem > FULLTAB * tp->size)
		FUNC6(tp);
	h = FUNC3(n, tp->size);
	p->cnext = tp->tab[h];
	tp->tab[h] = p;
	   FUNC2( ("setsymtab set %p: n=%s s=\"%s\" f=%g t=%o\n",
		(void)p, p->nval, p->sval, p->fval, p->tval) );
	return(p);
}