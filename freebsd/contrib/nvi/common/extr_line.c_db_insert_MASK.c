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
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ recno_t ;
typedef  int /*<<< orphan*/  lno ;
struct TYPE_22__ {int (* put ) (TYPE_4__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_21__ {scalar_t__* data; int size; } ;
struct TYPE_20__ {scalar_t__ c_lno; scalar_t__ c_nlines; TYPE_4__* db; } ;
struct TYPE_19__ {TYPE_2__* ep; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ EXF ;
typedef  TYPE_3__ DBT ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  EXM_NOFILEYET ; 
 int /*<<< orphan*/  F_FIRSTMODIFY ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_MODIFIED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,size_t,char*,size_t) ; 
 int /*<<< orphan*/  LINE_INSERT ; 
 int /*<<< orphan*/  LOG_LINE_INSERT ; 
 int /*<<< orphan*/  FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  M_SYSERR ; 
 scalar_t__ OOBLNO ; 
 int /*<<< orphan*/  R_IBEFORE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC13(
	SCR *sp,
	recno_t lno,
	CHAR_T *p,
	size_t len)
{
	DBT data, key;
	EXF *ep;
	char *fp;
	size_t flen;
	int rval;

#if defined(DEBUG) && 0
	TRACE(sp, "insert before %lu: len %lu {%.*s}\n",
	    (u_long)lno, (u_long)len, MIN(len, 20), p);
#endif
	/* Check for no underlying file. */
	if ((ep = sp->ep) == NULL) {
		FUNC5(sp, NULL, EXM_NOFILEYET);
		return (1);
	}
		
	FUNC2(sp, p, len, fp, flen);
		
	/* Update file. */
	key.data = &lno;
	key.size = sizeof(lno);
	data.data = fp;
	data.size = flen;
	if (ep->db->put(ep->db, &key, &data, R_IBEFORE) == -1) {
		FUNC9(sp, M_SYSERR,
		    "005|unable to insert at line %lu", (u_long)lno);
		return (1);
	}

	/* Flush the cache, update line count, before screen update. */
	if (lno >= ep->c_lno)
		ep->c_lno = OOBLNO;
	if (ep->c_nlines != OOBLNO)
		++ep->c_nlines;

	/* File now dirty. */
	if (FUNC0(ep, F_FIRSTMODIFY))
		(void)FUNC10(sp);
	FUNC1(ep, F_MODIFIED);

	/* Log change. */
	FUNC7(sp, lno, LOG_LINE_INSERT);

	/* Update marks, @ and global commands. */
	rval = 0;
	if (FUNC8(sp, LINE_INSERT, lno))
		rval = 1;
	if (FUNC6(sp, LINE_INSERT, lno))
		rval = 1;

	/* Update screen. */
	return (FUNC11(sp, lno, LINE_INSERT, 1) || rval);
}