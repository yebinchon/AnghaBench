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
struct ldexp_test {double x; int /*<<< orphan*/ * result; int /*<<< orphan*/  exp2; int /*<<< orphan*/  exp1; } ;
typedef  int /*<<< orphan*/  outbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,size_t,int /*<<< orphan*/ *,char*) ; 
 char* FORMAT ; 
 int /*<<< orphan*/  SKIP ; 
 double FUNC1 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,double) ; 

__attribute__((used)) static void
FUNC3(struct ldexp_test *table)
{
	char outbuf[64];
	size_t i;
	double v;

	for (i = 0; table->result != NULL; table++, i++) {

		v = FUNC1(table->x, table->exp1);

		if (table->exp2 != SKIP)
			v = FUNC1(v, table->exp2);

		(void)FUNC2(outbuf, sizeof(outbuf), FORMAT, v);

		FUNC0(table->result, outbuf,
			    "Entry %zu:\n\tExp: \"%s\"\n\tAct: \"%s\"",
			    i, table->result, outbuf);
	}
}