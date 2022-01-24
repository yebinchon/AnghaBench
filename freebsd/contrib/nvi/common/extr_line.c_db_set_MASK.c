#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ recno_t ;
typedef  int /*<<< orphan*/  lno ;
struct TYPE_20__ {int (* put ) (TYPE_4__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {scalar_t__* data; int size; } ;
struct TYPE_18__ {scalar_t__ c_lno; TYPE_4__* db; } ;
struct TYPE_17__ {TYPE_2__* ep; } ;
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
 int /*<<< orphan*/  LINE_RESET ; 
 int /*<<< orphan*/  LOG_LINE_RESET_B ; 
 int /*<<< orphan*/  LOG_LINE_RESET_F ; 
 int /*<<< orphan*/  FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  M_SYSERR ; 
 scalar_t__ OOBLNO ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC11(
	SCR *sp,
	recno_t lno,
	CHAR_T *p,
	size_t len)
{
	DBT data, key;
	EXF *ep;
	char *fp;
	size_t flen;

#if defined(DEBUG) && 0
	TRACE(sp, "replace line %lu: len %lu {%.*s}\n",
	    (u_long)lno, (u_long)len, MIN(len, 20), p);
#endif
	/* Check for no underlying file. */
	if ((ep = sp->ep) == NULL) {
		FUNC5(sp, NULL, EXM_NOFILEYET);
		return (1);
	}
		
	/* Log before change. */
	FUNC6(sp, lno, LOG_LINE_RESET_B);

	FUNC2(sp, p, len, fp, flen);

	/* Update file. */
	key.data = &lno;
	key.size = sizeof(lno);
	data.data = fp;
	data.size = flen;
	if (ep->db->put(ep->db, &key, &data, 0) == -1) {
		FUNC7(sp, M_SYSERR,
		    "006|unable to store line %lu", (u_long)lno);
		return (1);
	}

	/* Flush the cache, before logging or screen update. */
	if (lno == ep->c_lno)
		ep->c_lno = OOBLNO;

	/* File now dirty. */
	if (FUNC0(ep, F_FIRSTMODIFY))
		(void)FUNC8(sp);
	FUNC1(ep, F_MODIFIED);

	/* Log after change. */
	FUNC6(sp, lno, LOG_LINE_RESET_F);

	/* Update screen. */
	return (FUNC9(sp, lno, LINE_RESET, 1));
}