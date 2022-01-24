#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef  scalar_t__ recno_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_19__ {int /*<<< orphan*/  ibcw; } ;
struct TYPE_18__ {size_t cno; scalar_t__ lno; TYPE_1__* script; } ;
struct TYPE_17__ {scalar_t__ sh_master; } ;
typedef  TYPE_1__ SCRIPT ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ EX_PRIVATE ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *,size_t) ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINREAD ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 scalar_t__ FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*,size_t,size_t*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,char*,size_t) ; 
 int FUNC15 (TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC16(SCR *sp)
{
	EX_PRIVATE *exp;
	struct timeval tv;
	char *endp, *p, *t;
	SCRIPT *sc;
	fd_set rdfd;
	recno_t lno;
	size_t blen, len, tlen;
	int nr, rval;
	char *bp;
	CHAR_T *wp;
	size_t wlen = 0;

	exp = FUNC1(sp);


	/* Find out where the end of the file is. */
	if (FUNC7(sp, &lno))
		return (1);

#define	MINREAD	1024
	FUNC5(sp, bp, blen, MINREAD);
	endp = bp;

	/* Read the characters. */
	rval = 1;
	sc = sp->script;
more:	switch (nr = FUNC10(sc->sh_master, endp, MINREAD)) {
	case  0:			/* EOF; shell just exited. */
		FUNC12(sp);
		rval = 0;
		goto ret;
	case -1:			/* Error or interrupt. */
		FUNC9(sp, M_SYSERR, "shell");
		goto ret;
	default:
		endp += nr;
		break;
	}

	/* Append the lines into the file. */
	for (p = t = bp; p < endp; ++p) {
		if (*p == '\r' || *p == '\n') {
			len = p - t;
			if (FUNC0(sp, exp->ibcw, t, len, wp, wlen))
				goto conv_err;
			if (FUNC6(sp, 1, lno++, wp, wlen))
				goto ret;
			t = p + 1;
		}
	}
	if (p > t) {
		len = p - t;
		/*
		 * If the last thing from the shell isn't another prompt, wait
		 * up to 1/10 of a second for more stuff to show up, so that
		 * we don't break the output into two separate lines.  Don't
		 * want to hang indefinitely because some program is hanging,
		 * confused the shell, or whatever.
		 */
		if (!FUNC13(sp, t, len, &tlen) || tlen != 0) {
			tv.tv_sec = 0;
			tv.tv_usec = 100000;
			FUNC3(&rdfd);
			FUNC2(sc->sh_master, &rdfd);
			if (FUNC11(sc->sh_master + 1,
			    &rdfd, NULL, NULL, &tv) == 1) {
				FUNC8(bp, t, len);
				endp = bp + len;
				goto more;
			}
		}
		if (FUNC14(sp, t, len))
			return (1);
		if (FUNC0(sp, exp->ibcw, t, len, wp, wlen))
			goto conv_err;
		if (FUNC6(sp, 1, lno++, wp, wlen))
			goto ret;
	}

	/* The cursor moves to EOF. */
	sp->lno = lno;
	sp->cno = wlen ? wlen - 1 : 0;
	rval = FUNC15(sp, 1);

	if (0)
conv_err:	FUNC9(sp, M_ERR, "323|Invalid input. Truncated.");

ret:	FUNC4(sp, bp, blen);
	return (rval);
}