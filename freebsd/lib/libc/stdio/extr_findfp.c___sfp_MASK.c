#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct glue {int niobs; TYPE_4__* iobs; struct glue* next; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
struct TYPE_8__ {scalar_t__ _size; int /*<<< orphan*/ * _base; } ;
struct TYPE_7__ {scalar_t__ _size; int /*<<< orphan*/ * _base; } ;
struct TYPE_6__ {scalar_t__ _size; int /*<<< orphan*/ * _base; } ;
struct TYPE_9__ {int _flags; int _file; scalar_t__ _flags2; int /*<<< orphan*/  _mbstate; scalar_t__ _orientation; TYPE_3__ _lb; TYPE_2__ _ub; scalar_t__ _lbfsize; TYPE_1__ _bf; scalar_t__ _r; scalar_t__ _w; int /*<<< orphan*/ * _p; } ;
typedef  TYPE_4__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  NDYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (struct glue*,struct glue*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  __sdidinit ; 
 struct glue __sglue ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct glue* lastglue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct glue* FUNC5 (int /*<<< orphan*/ ) ; 

FILE *
FUNC6(void)
{
	FILE	*fp;
	int	n;
	struct glue *g;

	if (!__sdidinit)
		FUNC3();
	/*
	 * The list must be locked because a FILE may be updated.
	 */
	FUNC1();
	for (g = &__sglue; g != NULL; g = g->next) {
		for (fp = g->iobs, n = g->niobs; --n >= 0; fp++)
			if (fp->_flags == 0)
				goto found;
	}
	FUNC2();	/* don't hold lock while malloc()ing. */
	if ((g = FUNC5(NDYNAMIC)) == NULL)
		return (NULL);
	FUNC1();	/* reacquire the lock */
	FUNC0(lastglue->next, g); /* atomically append glue to list */
	lastglue = g;		/* not atomic; only accessed when locked */
	fp = g->iobs;
found:
	fp->_flags = 1;		/* reserve this slot; caller sets real flags */
	FUNC2();
	fp->_p = NULL;		/* no current pointer */
	fp->_w = 0;		/* nothing to read or write */
	fp->_r = 0;
	fp->_bf._base = NULL;	/* no buffer */
	fp->_bf._size = 0;
	fp->_lbfsize = 0;	/* not line buffered */
	fp->_file = -1;		/* no file */
/*	fp->_cookie = <any>; */	/* caller sets cookie, _read/_write etc */
	fp->_ub._base = NULL;	/* no ungetc buffer */
	fp->_ub._size = 0;
	fp->_lb._base = NULL;	/* no line buffer */
	fp->_lb._size = 0;
/*	fp->_fl_mutex = NULL; */ /* once set always set (reused) */
	fp->_orientation = 0;
	FUNC4(&fp->_mbstate, 0, sizeof(mbstate_t));
	fp->_flags2 = 0;
	return (fp);
}