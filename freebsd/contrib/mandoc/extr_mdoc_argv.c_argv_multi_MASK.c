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
struct roff_man {int dummy; } ;
struct mdoc_argv {int sz; char** value; } ;
typedef  enum margserr { ____Placeholder_margserr } margserr ;

/* Variables and functions */
 int /*<<< orphan*/  ARGSFL_NONE ; 
 int ARGS_ALLOC ; 
 int ARGS_EOLN ; 
 int MULTI_STEP ; 
 int FUNC0 (struct roff_man*,int,int*,char*,int /*<<< orphan*/ ,char**) ; 
 char** FUNC1 (char**,int,int) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct roff_man *mdoc, int line,
		struct mdoc_argv *v, int *pos, char *buf)
{
	enum margserr	 ac;
	char		*p;

	for (v->sz = 0; ; v->sz++) {
		if (buf[*pos] == '-')
			break;
		ac = FUNC0(mdoc, line, pos, buf, ARGSFL_NONE, &p);
		if (ac == ARGS_EOLN)
			break;

		if (v->sz % MULTI_STEP == 0)
			v->value = FUNC1(v->value,
			    v->sz + MULTI_STEP, sizeof(char *));

		if (ac != ARGS_ALLOC)
			p = FUNC2(p);
		v->value[(int)v->sz] = p;
	}
}