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
typedef  enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
typedef  enum margserr { ____Placeholder_margserr } margserr ;

/* Variables and functions */
 int ARGS_ALLOC ; 
 int ARGS_EOLN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct roff_man*,int,int,int,int*,char*,char*,int) ; 
 int FUNC2 (struct roff_man*,int,int*,char*,int,char**) ; 

__attribute__((used)) static int
FUNC3(struct roff_man *mdoc, enum roff_tok tok,
    int line, int *pos, char *buf)
{
	char		*p;
	int		 done, la;
	enum margserr	 ac;

	for (;;) {
		la = *pos;
		ac = FUNC2(mdoc, line, pos, buf, tok, &p);
		if (ac == ARGS_EOLN)
			return 0;
		done = FUNC1(mdoc, tok, line, la, pos, buf, p, 1);
		if (ac == ARGS_ALLOC)
			FUNC0(p);
		if (done)
			return 1;
	}
}