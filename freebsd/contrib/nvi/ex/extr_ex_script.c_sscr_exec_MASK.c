#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  recno_t ;
struct TYPE_16__ {TYPE_1__* script; } ;
struct TYPE_15__ {int /*<<< orphan*/  sh_master; } ;
typedef  TYPE_1__ SCRIPT ;
typedef  TYPE_2__ SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,size_t,char*,size_t) ; 
 int /*<<< orphan*/  M_BERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,char*,size_t,size_t*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC13(SCR *sp, recno_t lno)
{
	SCRIPT *sc;
	recno_t last_lno;
	size_t blen, len, last_len, tlen;
	int isempty, matchprompt, nw, rval;
	char *bp = NULL, *p;
	CHAR_T *wp;
	size_t wlen;

	/* If there's a prompt on the last line, append the command. */
	if (FUNC7(sp, &last_lno))
		return (1);
	if (FUNC6(sp, last_lno, DBG_FATAL, &wp, &wlen))
		return (1);
	FUNC4(sp, wp, wlen, p, last_len);
	if (FUNC11(sp, p, last_len, &tlen) && tlen == 0) {
		matchprompt = 1;
		FUNC3(sp, bp, blen, last_len + 128);
		FUNC9(bp, p, last_len);
	} else
		matchprompt = 0;

	/* Get something to execute. */
	if (FUNC5(sp, lno, &wp, &wlen, &isempty)) {
		if (isempty)
			goto empty;
		goto err1;
	}

	/* Empty lines aren't interesting. */
	if (wlen == 0)
		goto empty;
	FUNC4(sp, wp, wlen, p, len);

	/* Delete any prompt. */
	if (FUNC11(sp, p, len, &tlen)) {
		if (tlen == len) {
empty:			FUNC10(sp, M_BERR, "151|No command to execute");
			goto err1;
		}
		p += (len - tlen);
		len = tlen;
	}

	/* Push the line to the shell. */
	sc = sp->script;
	if ((nw = FUNC12(sc->sh_master, p, len)) != len)
		goto err2;
	rval = 0;
	if (FUNC12(sc->sh_master, "\n", 1) != 1) {
err2:		if (nw == 0)
			errno = EIO;
		FUNC10(sp, M_SYSERR, "shell");
		goto err1;
	}

	if (matchprompt) {
		FUNC0(sp, bp, blen, last_len + len);
		FUNC9(bp + last_len, p, len);
		FUNC1(sp, bp, last_len + len, wp, wlen);
		if (FUNC8(sp, last_lno, wp, wlen))
err1:			rval = 1;
	}
	if (matchprompt)
		FUNC2(sp, bp, blen);
	return (rval);
}