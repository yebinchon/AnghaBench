#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  scalar_t__ recno_t ;
typedef  void* dir_t ;
struct TYPE_7__ {int lno; scalar_t__* re; size_t re_len; void* searchdir; int /*<<< orphan*/  re_c; } ;
typedef  TYPE_1__ SCR ;
typedef  scalar_t__ CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int RE_C_CSCOPE ; 
 int RE_C_SEARCH ; 
 int RE_C_SILENT ; 
 int RE_C_TAG ; 
 int /*<<< orphan*/  SC_RE_SEARCH ; 
 int /*<<< orphan*/  SEARCH_CSCOPE ; 
 int /*<<< orphan*/  SEARCH_MSG ; 
 int /*<<< orphan*/  SEARCH_PARSE ; 
 int /*<<< orphan*/  SEARCH_SET ; 
 int /*<<< orphan*/  SEARCH_TAG ; 
 int /*<<< orphan*/  S_EMPTY ; 
 int /*<<< orphan*/  S_NOPREV ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__*,size_t,scalar_t__**,size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(
	SCR *sp,
	dir_t dir,
	CHAR_T *ptrn,
	size_t plen,
	CHAR_T **epp,
	u_int flags)
{
	recno_t lno;
	int delim;
	CHAR_T *p, *t;

	/* If the file is empty, it's a fast search. */
	if (sp->lno <= 1) {
		if (FUNC2(sp, &lno))
			return (1);
		if (lno == 0) {
			if (FUNC1(SEARCH_MSG))
				FUNC4(sp, S_EMPTY);
			return (1);
		}
	}

	if (FUNC1(SEARCH_PARSE)) {		/* Parse the string. */
		/*
		 * Use the saved pattern if no pattern specified, or if only
		 * one or two delimiter characters specified.
		 *
		 * !!!
		 * Historically, only the pattern itself was saved, vi didn't
		 * preserve addressing or delta information.
		 */
		if (ptrn == NULL)
			goto prev;
		if (plen == 1) {
			if (epp != NULL)
				*epp = ptrn + 1;
			goto prev;
		}
		if (ptrn[0] == ptrn[1]) {
			if (epp != NULL)
				*epp = ptrn + 2;

			/* Complain if we don't have a previous pattern. */
prev:			if (sp->re == NULL) {
				FUNC4(sp, S_NOPREV);
				return (1);
			}
			/* Re-compile the search pattern if necessary. */
			if (!FUNC0(sp, SC_RE_SEARCH) && FUNC3(sp,
			    sp->re, sp->re_len, NULL, NULL, &sp->re_c,
			    RE_C_SEARCH |
			    (FUNC1(SEARCH_MSG) ? 0 : RE_C_SILENT)))
				return (1);

			/* Set the search direction. */
			if (FUNC1(SEARCH_SET))
				sp->searchdir = dir;
			return (0);
		}

		/*
		 * Set the delimiter, and move forward to the terminating
		 * delimiter, handling escaped delimiters.
		 *
		 * QUOTING NOTE:
		 * Only discard an escape character if it escapes a delimiter.
		 */
		for (delim = *ptrn, p = t = ++ptrn;; *t++ = *p++) {
			if (--plen == 0 || p[0] == delim) {
				if (plen != 0)
					++p;
				break;
			}
			if (plen > 1 && p[0] == '\\' && p[1] == delim) {
				++p;
				--plen;
			}
		}
		if (epp != NULL)
			*epp = p;

		plen = t - ptrn;
	}

	/* Compile the RE. */
	if (FUNC3(sp, ptrn, plen, &sp->re, &sp->re_len, &sp->re_c,
	    RE_C_SEARCH |
	    (FUNC1(SEARCH_MSG) ? 0 : RE_C_SILENT) |
	    (FUNC1(SEARCH_TAG) ? RE_C_TAG : 0) |
	    (FUNC1(SEARCH_CSCOPE) ? RE_C_CSCOPE : 0)))
		return (1);

	/* Set the search direction. */
	if (FUNC1(SEARCH_SET))
		sp->searchdir = dir;

	return (0);
}