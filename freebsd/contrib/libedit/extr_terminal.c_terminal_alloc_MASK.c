#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  termbuf ;
struct termcapstr {int dummy; } ;
struct TYPE_4__ {char** t_str; int t_loc; char* t_buf; } ;
struct TYPE_5__ {TYPE_1__ el_terminal; int /*<<< orphan*/  el_errfile; } ;
typedef  TYPE_2__ EditLine ;

/* Variables and functions */
 int TC_BUFSIZE ; 
 size_t T_str ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 size_t FUNC4 (char const*) ; 
 struct termcapstr const* tstr ; 

__attribute__((used)) static void
FUNC5(EditLine *el, const struct termcapstr *t, const char *cap)
{
	char termbuf[TC_BUFSIZE];
	size_t tlen, clen;
	char **tlist = el->el_terminal.t_str;
	char **tmp, **str = &tlist[t - tstr];

	(void) FUNC2(termbuf, 0, sizeof(termbuf));
	if (cap == NULL || *cap == '\0') {
		*str = NULL;
		return;
	} else
		clen = FUNC4(cap);

	tlen = *str == NULL ? 0 : FUNC4(*str);

	/*
         * New string is shorter; no need to allocate space
         */
	if (clen <= tlen) {
		if (*str)
			(void) FUNC3(*str, cap);	/* XXX strcpy is safe */
		return;
	}
	/*
         * New string is longer; see if we have enough space to append
         */
	if (el->el_terminal.t_loc + 3 < TC_BUFSIZE) {
						/* XXX strcpy is safe */
		(void) FUNC3(*str = &el->el_terminal.t_buf[
		    el->el_terminal.t_loc], cap);
		el->el_terminal.t_loc += clen + 1;	/* one for \0 */
		return;
	}
	/*
         * Compact our buffer; no need to check compaction, cause we know it
         * fits...
         */
	tlen = 0;
	for (tmp = tlist; tmp < &tlist[T_str]; tmp++)
		if (*tmp != NULL && **tmp != '\0' && *tmp != *str) {
			char *ptr;

			for (ptr = *tmp; *ptr != '\0'; termbuf[tlen++] = *ptr++)
				continue;
			termbuf[tlen++] = '\0';
		}
	FUNC1(el->el_terminal.t_buf, termbuf, TC_BUFSIZE);
	el->el_terminal.t_loc = tlen;
	if (el->el_terminal.t_loc + 3 >= TC_BUFSIZE) {
		(void) FUNC0(el->el_errfile,
		    "Out of termcap string space.\n");
		return;
	}
					/* XXX strcpy is safe */
	(void) FUNC3(*str = &el->el_terminal.t_buf[el->el_terminal.t_loc],
	    cap);
	el->el_terminal.t_loc += (size_t)clen + 1;	/* one for \0 */
	return;
}