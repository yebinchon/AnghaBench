#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ _base; } ;
struct TYPE_10__ {int _flags; scalar_t__ (* _close ) (int /*<<< orphan*/ ) ;int _file; scalar_t__ _w; scalar_t__ _r; TYPE_1__ _bf; int /*<<< orphan*/  _cookie; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int __SMBF ; 
 int __SWR ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(FILE *fp, bool c)
{
	int r;

	r = fp->_flags & __SWR ? FUNC6(fp) : 0;
	if (c) {
		if (fp->_close != NULL && (*fp->_close)(fp->_cookie) < 0)
			r = EOF;
	}

	if (fp->_flags & __SMBF)
		FUNC7((char *)fp->_bf._base);
	if (FUNC3(fp))
		FUNC1(fp);
	if (FUNC2(fp))
		FUNC0(fp);
	fp->_file = -1;
	fp->_r = fp->_w = 0;	/* Mess up if reaccessed. */

	/*
	 * Lock the spinlock used to protect __sglue list walk in
	 * __sfp().  The __sfp() uses fp->_flags == 0 test as an
	 * indication of the unused FILE.
	 *
	 * Taking the lock prevents possible compiler or processor
	 * reordering of the writes performed before the final _flags
	 * cleanup, making sure that we are done with the FILE before
	 * it is considered available.
	 */
	FUNC4();
	fp->_flags = 0;		/* Release this FILE for reuse. */
	FUNC5();

	return (r);
}