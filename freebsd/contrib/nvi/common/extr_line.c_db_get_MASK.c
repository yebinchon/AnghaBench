#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  scalar_t__ recno_t ;
typedef  int /*<<< orphan*/  lno ;
struct TYPE_24__ {int (* get ) (TYPE_5__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_23__ {scalar_t__* data; int size; } ;
struct TYPE_22__ {scalar_t__ c_lno; size_t c_len; scalar_t__* c_lp; int /*<<< orphan*/  c_blen; TYPE_5__* db; } ;
struct TYPE_21__ {int /*<<< orphan*/  tiq; TYPE_3__* ep; } ;
struct TYPE_20__ {scalar_t__ lno; size_t len; scalar_t__* lb; } ;
typedef  TYPE_1__ TEXT ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ EXF ;
typedef  TYPE_4__ DBT ;
typedef  scalar_t__ CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  DBG_NOCACHE ; 
 int /*<<< orphan*/  EXM_NOFILEYET ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__*,int,scalar_t__*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 scalar_t__ OOBLNO ; 
 int /*<<< orphan*/  SC_CONV_ERROR ; 
 int /*<<< orphan*/  SC_TINPUT ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _texth ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  q ; 
 int FUNC13 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 

int
FUNC14(
	SCR *sp,
	recno_t lno,				/* Line number. */
	u_int32_t flags,
	CHAR_T **pp,				/* Pointer store. */
	size_t *lenp)				/* Length store. */
{
	DBT data, key;
	EXF *ep;
	TEXT *tp;
	recno_t l1, l2;
	CHAR_T *wp;
	size_t wlen;

	/*
	 * The underlying recno stuff handles zero by returning NULL, but
	 * have to have an OOB condition for the look-aside into the input
	 * buffer anyway.
	 */
	if (lno == 0)
		goto err1;

	/* Check for no underlying file. */
	if ((ep = sp->ep) == NULL) {
		FUNC11(sp, NULL, EXM_NOFILEYET);
		goto err3;
	}

	if (FUNC4(DBG_NOCACHE))
		goto nocache;

	/*
	 * Look-aside into the TEXT buffers and see if the line we want
	 * is there.
	 */
	if (FUNC2(sp, SC_TINPUT)) {
		l1 = ((TEXT *)FUNC6(sp->tiq))->lno;
		l2 = ((TEXT *)FUNC7(sp->tiq, _texth))->lno;
		if (l1 <= lno && l2 >= lno) {
#if defined(DEBUG) && 0
	TRACE(sp, "retrieve TEXT buffer line %lu\n", (u_long)lno);
#endif
			for (tp = FUNC6(sp->tiq);
			    tp->lno != lno; tp = FUNC8(tp, q));
			if (lenp != NULL)
				*lenp = tp->len;
			if (pp != NULL)
				*pp = tp->lb;
			return (0);
		}
		/*
		 * Adjust the line number for the number of lines used
		 * by the text input buffers.
		 */
		if (lno > l2)
			lno -= l2 - l1;
	}

	/* Look-aside into the cache, and see if the line we want is there. */
	if (lno == ep->c_lno) {
#if defined(DEBUG) && 0
	TRACE(sp, "retrieve cached line %lu\n", (u_long)lno);
#endif
		if (lenp != NULL)
			*lenp = ep->c_len;
		if (pp != NULL)
			*pp = ep->c_lp;
		return (0);
	}
	ep->c_lno = OOBLNO;

nocache:
	/* Get the line from the underlying database. */
	key.data = &lno;
	key.size = sizeof(lno);
	switch (ep->db->get(ep->db, &key, &data, 0)) {
	case -1:
		goto err2;
	case 1:
err1:		if (FUNC4(DBG_FATAL))
err2:			FUNC10(sp, lno);
alloc_err:
err3:		if (lenp != NULL)
			*lenp = 0;
		if (pp != NULL)
			*pp = NULL;
		return (1);
	}

	if (FUNC1(sp, data.data, data.size, wp, wlen)) {
		if (!FUNC2(sp, SC_CONV_ERROR)) {
			FUNC3(sp, SC_CONV_ERROR);
			FUNC12(sp, M_ERR, "324|Conversion error on line %d", lno);
		}
		goto err3;
	}

	/* Reset the cache. */
	if (wp != data.data) {
		FUNC0(sp, ep->c_lp, ep->c_blen, wlen);
		FUNC5(ep->c_lp, wp, wlen);
	} else
		ep->c_lp = data.data;
	ep->c_lno = lno;
	ep->c_len = wlen;

#if defined(DEBUG) && 0
	TRACE(sp, "retrieve DB line %lu\n", (u_long)lno);
#endif
	if (lenp != NULL)
		*lenp = wlen;
	if (pp != NULL)
		*pp = ep->c_lp;
	return (0);
}