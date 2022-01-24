#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ recno_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* scr_busy ) (TYPE_1__*,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {scalar_t__ lno; } ;
struct TYPE_12__ {int /*<<< orphan*/  ep; TYPE_3__* gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ MARK ;
typedef  TYPE_3__ GS ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY_OFF ; 
 int /*<<< orphan*/  BUSY_ON ; 
 int /*<<< orphan*/  BUSY_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_MULTILOCK ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ INTERRUPT_CHECK ; 
 int /*<<< orphan*/  M_SYSERR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__,char**,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 char FUNC11 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

int
FUNC14(SCR *sp, char *name, FILE *fp, MARK *fm, MARK *tm, u_long *nlno, u_long *nch, int silent)
{
	struct stat sb;
	GS *gp;
	u_long ccnt;			/* XXX: can't print off_t portably. */
	recno_t fline, tline, lcnt;
	size_t len;
	int rval;
	char *msg, *p;

	gp = sp->gp;
	fline = fm->lno;
	tline = tm->lno;

	if (nlno != NULL) {
		*nch = 0;
		*nlno = 0;
	}

	/*
	 * The vi filter code has multiple processes running simultaneously,
	 * and one of them calls ex_writefp().  The "unsafe" function calls
	 * in this code are to db_get() and msgq().  Db_get() is safe, see
	 * the comment in ex_filter.c:ex_filter() for details.  We don't call
	 * msgq if the multiple process bit in the EXF is set.
	 *
	 * !!!
	 * Historic vi permitted files of 0 length to be written.  However,
	 * since the way vi got around dealing with "empty" files was to
	 * always have a line in the file no matter what, it wrote them as
	 * files of a single, empty line.  We write empty files.
	 *
	 * "Alex, I'll take vi trivia for $1000."
	 */
	ccnt = 0;
	lcnt = 0;
	msg = "253|Writing...";
	if (tline != 0)
		for (; fline <= tline; ++fline, ++lcnt) {
			/* Caller has to provide any interrupt message. */
			if ((lcnt + 1) % INTERRUPT_CHECK == 0) {
				if (FUNC1(sp))
					break;
				if (!silent) {
					gp->scr_busy(sp, msg, msg == NULL ?
					    BUSY_UPDATE : BUSY_ON);
					msg = NULL;
				}
			}
			if (FUNC3(sp, fline, &p, &len))
				goto err;
			if (FUNC9(p, 1, len, fp) != len)
				goto err;
			ccnt += len;
			if (FUNC11('\n', fp) != '\n')
				break;
			++ccnt;
		}

	if (FUNC5(fp))
		goto err;
	/*
	 * XXX
	 * I don't trust NFS -- check to make sure that we're talking to
	 * a regular file and sync so that NFS is forced to flush.
	 */
	if (!FUNC7(FUNC6(fp), &sb) &&
	    FUNC2(sb.st_mode) && FUNC8(FUNC6(fp)))
		goto err;

	if (FUNC4(fp))
		goto err;

	rval = 0;
	if (0) {
err:		if (!FUNC0(sp->ep, F_MULTILOCK))
			FUNC10(sp, M_SYSERR, name, "%s");
		(void)FUNC4(fp);
		rval = 1;
	}

	if (!silent)
		gp->scr_busy(sp, NULL, BUSY_OFF);

	/* Report the possibly partial transfer. */
	if (nlno != NULL) {
		*nch = ccnt;
		*nlno = lcnt;
	}
	return (rval);
}