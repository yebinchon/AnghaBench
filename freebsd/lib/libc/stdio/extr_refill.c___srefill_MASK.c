#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  _size; int /*<<< orphan*/ * _base; } ;
struct TYPE_11__ {scalar_t__ _r; int _flags; scalar_t__ _ur; TYPE_1__ _bf; int /*<<< orphan*/ * _p; int /*<<< orphan*/ * _up; scalar_t__ _lbfsize; scalar_t__ _w; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int __SEOF ; 
 int __SERR ; 
 int __SIGN ; 
 int __SLBF ; 
 int __SMOD ; 
 int __SNBF ; 
 int __SRD ; 
 int __SRW ; 
 int __SWR ; 
 int /*<<< orphan*/  __sdidinit ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  lflush ; 

int
FUNC8(FILE *fp)
{

	/* make sure stdio is set up */
	if (!__sdidinit)
		FUNC4();

	FUNC2(fp, -1);

	fp->_r = 0;		/* largely a convenience for callers */

	/* SysV does not make this test; take it out for compatibility */
	if (fp->_flags & __SEOF)
		return (EOF);

	/* if not already reading, have to be reading and writing */
	if ((fp->_flags & __SRD) == 0) {
		if ((fp->_flags & __SRW) == 0) {
			errno = EBADF;
			fp->_flags |= __SERR;
			return (EOF);
		}
		/* switch to reading */
		if (fp->_flags & __SWR) {
			if (FUNC3(fp))
				return (EOF);
			fp->_flags &= ~__SWR;
			fp->_w = 0;
			fp->_lbfsize = 0;
		}
		fp->_flags |= __SRD;
	} else {
		/*
		 * We were reading.  If there is an ungetc buffer,
		 * we must have been reading from that.  Drop it,
		 * restoring the previous buffer (if any).  If there
		 * is anything in that buffer, return.
		 */
		if (FUNC1(fp)) {
			FUNC0(fp);
			if ((fp->_r = fp->_ur) != 0) {
				fp->_p = fp->_up;
				return (0);
			}
		}
	}

	if (fp->_bf._base == NULL)
		FUNC5(fp);

	/*
	 * Before reading from a line buffered or unbuffered file,
	 * flush all line buffered output files, per the ANSI C
	 * standard.
	 */
	if (fp->_flags & (__SLBF|__SNBF)) {
		/* Ignore this file in _fwalk to avoid potential deadlock. */
		fp->_flags |= __SIGN;
		(void) FUNC6(lflush);
		fp->_flags &= ~__SIGN;

		/* Now flush this file without locking it. */
		if ((fp->_flags & (__SLBF|__SWR)) == (__SLBF|__SWR))
			FUNC3(fp);
	}
	fp->_p = fp->_bf._base;
	fp->_r = FUNC7(fp, (char *)fp->_p, fp->_bf._size);
	fp->_flags &= ~__SMOD;	/* buffer contents are again pristine */
	if (fp->_r <= 0) {
		if (fp->_r == 0)
			fp->_flags |= __SEOF;
		else {
			fp->_r = 0;
			fp->_flags |= __SERR;
		}
		return (EOF);
	}
	return (0);
}