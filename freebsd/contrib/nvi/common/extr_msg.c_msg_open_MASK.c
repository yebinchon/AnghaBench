#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nl_catd ;
struct TYPE_7__ {int /*<<< orphan*/  catd; } ;
struct TYPE_6__ {TYPE_5__* gp; } ;
typedef  TYPE_1__ SCR ;

/* Variables and functions */
 scalar_t__ EFTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  NL_CAT_LOCALE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*,char) ; 

int
FUNC8(
	SCR *sp,
	char *file)
{
	/*
	 * !!!
	 * Assume that the first file opened is the system default, and that
	 * all subsequent ones user defined.  Only display error messages
	 * if we can't open the user defined ones -- it's useful to know if
	 * the system one wasn't there, but if nvi is being shipped with an
	 * installed system, the file will be there, if it's not, then the
	 * message will be repeated every time nvi is started up.
	 */
	static int first = 1;
	nl_catd catd;
	char *p;
	int rval = 0;

	if ((p = FUNC7(file, '/')) != NULL && p[1] == '\0') {
		/* Confirms to XPG4. */
		if ((p = FUNC2(file, FUNC6(LC_MESSAGES, NULL))) == NULL) {
			FUNC4(sp, M_SYSERR, NULL);
			return (1);
		}
	} else {
		/* Make sure it's recognized as a path by catopen(3). */
		if ((p = FUNC2(".", file)) == NULL) {
			FUNC4(sp, M_SYSERR, NULL);
			return (1);
		}
	}
	errno = 0;
	if ((catd = FUNC0(p, NL_CAT_LOCALE)) == (nl_catd)-1) {
		if (first) {
			first = 0;
			rval = 1;
			goto ret;
		}

		/*
		 * POSIX.1-2008 gives no instruction on how to report a
		 * corrupt catalog file.  Errno == 0 is not rare; add
		 * EFTYPE, which is seen on FreeBSD, for a good measure.
		 */
		if (errno == 0 || errno == EFTYPE)
			FUNC5(sp, M_ERR, p,
			    "030|The file %s is not a message catalog");
		else
			FUNC5(sp, M_SYSERR, p, "%s");
		rval = 1;
		goto ret;
	}
	first = 0;

	FUNC3(sp->gp);
	sp->gp->catd = catd;
ret:	FUNC1(p);
	return (rval);
}