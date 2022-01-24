#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int recno_t ;
struct TYPE_22__ {int /*<<< orphan*/  ibp; int /*<<< orphan*/  ibcw; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* scr_busy ) (TYPE_1__*,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_20__ {int lno; } ;
struct TYPE_19__ {TYPE_3__* gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ MARK ;
typedef  TYPE_3__ GS ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_4__ EX_PRIVATE ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY_OFF ; 
 int /*<<< orphan*/  BUSY_ON ; 
 int /*<<< orphan*/  BUSY_UPDATE ; 
 TYPE_4__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int INTERRUPT_CHECK ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  M_SYSERR ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (TYPE_1__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

int
FUNC13(SCR *sp, char *name, FILE *fp, MARK *fm, recno_t *nlinesp, int silent)
{
	EX_PRIVATE *exp;
	GS *gp;
	recno_t lcnt, lno;
	size_t len;
	u_long ccnt;			/* XXX: can't print off_t portably. */
	int nf, rval;
	char *p;
	size_t wlen;
	CHAR_T *wp;

	gp = sp->gp;
	exp = FUNC0(sp);

	/*
	 * Add in the lines from the output.  Insertion starts at the line
	 * following the address.
	 */
	ccnt = 0;
	lcnt = 0;
	p = "147|Reading...";
	for (lno = fm->lno; !FUNC5(sp, fp, &len); ++lno, ++lcnt) {
		if ((lcnt + 1) % INTERRUPT_CHECK == 0) {
			if (FUNC3(sp))
				break;
			if (!silent) {
				gp->scr_busy(sp, p,
				    p == NULL ? BUSY_UPDATE : BUSY_ON);
				p = NULL;
			}
		}
		FUNC1(sp, exp->ibcw, exp->ibp, len, wp, wlen);
		if (FUNC4(sp, 1, lno, wp, wlen))
			goto err;
		ccnt += len;
	}

	if (FUNC7(fp) || FUNC6(fp))
		goto err;

	/* Return the number of lines read in. */
	if (nlinesp != NULL)
		*nlinesp = lcnt;

	if (!silent) {
		p = FUNC8(sp, name, &nf);
		FUNC9(sp, M_INFO,
		    "148|%s: %lu lines, %lu characters", p,
		    (u_long)lcnt, ccnt);
		if (nf)
			FUNC2(sp, p, 0);
	}

	rval = 0;
	if (0) {
err:		FUNC10(sp, M_SYSERR, name, "%s");
		(void)FUNC6(fp);
		rval = 1;
	}

	if (!silent)
		gp->scr_busy(sp, NULL, BUSY_OFF);
	return (rval);
}