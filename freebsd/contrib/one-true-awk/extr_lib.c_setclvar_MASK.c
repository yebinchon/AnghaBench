#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tval; int /*<<< orphan*/  sval; int /*<<< orphan*/  fval; } ;
typedef  TYPE_1__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  NUM ; 
 int /*<<< orphan*/  STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC5 (char*,char*,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symtab ; 

void FUNC6(char *s)	/* set var=value from s */
{
	char *p;
	Cell *q;

	for (p=s; *p != '='; p++)
		;
	*p++ = 0;
	p = FUNC3(p, '\0');
	q = FUNC5(s, p, 0.0, STR, symtab);
	FUNC4(q, p);
	if (FUNC2(q->sval)) {
		q->fval = FUNC0(q->sval);
		q->tval |= NUM;
	}
	   FUNC1( ("command line set %s to |%s|\n", s, p) );
}