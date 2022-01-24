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
struct roff_man {TYPE_1__* last; } ;
typedef  enum margserr { ____Placeholder_margserr } margserr ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ARGS_ALLOC ; 
 int ARGS_EOLN ; 
 int /*<<< orphan*/  DELIM_MAX ; 
 int /*<<< orphan*/  NODE_EOS ; 
 int /*<<< orphan*/  TOKEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct roff_man*,int,int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct roff_man*,int,int*,char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct roff_man *mdoc, int line, int *pos, char *buf)
{
	char		*p;
	int		 la;
	enum margserr	 ac;

	if (buf[*pos] == '\0')
		return;

	for (;;) {
		la = *pos;
		ac = FUNC3(mdoc, line, pos, buf, TOKEN_NONE, &p);
		if (ac == ARGS_EOLN)
			break;
		FUNC0(mdoc, line, la, p, DELIM_MAX, 1);

		/*
		 * If we encounter end-of-sentence symbols, then trigger
		 * the double-space.
		 *
		 * XXX: it's easy to allow this to propagate outward to
		 * the last symbol, such that `. )' will cause the
		 * correct double-spacing.  However, (1) groff isn't
		 * smart enough to do this and (2) it would require
		 * knowing which symbols break this behaviour, for
		 * example, `.  ;' shouldn't propagate the double-space.
		 */

		if (FUNC2(p, FUNC4(p)))
			mdoc->last->flags |= NODE_EOS;
		if (ac == ARGS_ALLOC)
			FUNC1(p);
	}
}