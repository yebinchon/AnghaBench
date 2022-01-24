#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ _size; int /*<<< orphan*/ * _base; } ;
struct TYPE_8__ {int _flags; TYPE_1__ _bf; scalar_t__ _w; scalar_t__ _lbfsize; int /*<<< orphan*/ * _p; scalar_t__ _r; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int __SEOF ; 
 int __SERR ; 
 int __SLBF ; 
 int __SNBF ; 
 int __SRD ; 
 int __SRW ; 
 int __SWR ; 
 int /*<<< orphan*/  __sdidinit ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC4(FILE *fp)
{
	/* make sure stdio is set up */
	if (!__sdidinit)
		FUNC2();

	/*
	 * If we are not writing, we had better be reading and writing.
	 */
	if ((fp->_flags & __SWR) == 0) {
		if ((fp->_flags & __SRW) == 0) {
			errno = EBADF;
			fp->_flags |= __SERR;
			return (EOF);
		}
		if (fp->_flags & __SRD) {
			/* clobber any ungetc data */
			if (FUNC1(fp))
				FUNC0(fp);
			fp->_flags &= ~(__SRD|__SEOF);
			fp->_r = 0;
			fp->_p = fp->_bf._base;
		}
		fp->_flags |= __SWR;
	}

	/*
	 * Make a buffer if necessary, then set _w.
	 */
	if (fp->_bf._base == NULL)
		FUNC3(fp);
	if (fp->_flags & __SLBF) {
		/*
		 * It is line buffered, so make _lbfsize be -_bufsize
		 * for the putc() macro.  We will change _lbfsize back
		 * to 0 whenever we turn off __SWR.
		 */
		fp->_w = 0;
		fp->_lbfsize = -fp->_bf._size;
	} else
		fp->_w = fp->_flags & __SNBF ? 0 : fp->_bf._size;
	return (0);
}