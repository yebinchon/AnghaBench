#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int _begy; int _begx; int _maxy; int _maxx; } ;
typedef  TYPE_1__ WINDOW ;

/* Variables and functions */
 int ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__ const* const,TYPE_1__* const,int,int,int,int,int,int,int const) ; 
 int /*<<< orphan*/  curses ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(const WINDOW *const src, WINDOW *const dst, int const flag)
{
    int rc = ERR;
    int sx1, sy1, sx2, sy2;
    int dx1, dy1, dx2, dy2;
    int sminrow, smincol;
    int dminrow, dmincol;
    int dmaxrow, dmaxcol;

    FUNC0((FUNC1("overlap(%p,%p,%d)"), (const void *) src, (void ) dst, flag));

    if (src != 0 && dst != 0) {
	FUNC2(curses);

	FUNC0(("src : begy %ld, begx %ld, maxy %ld, maxx %ld",
	   (long) src->_begy,
	   (long) src->_begx,
	   (long) src->_maxy,
	   (long) src->_maxx));
	FUNC0(("dst : begy %ld, begx %ld, maxy %ld, maxx %ld",
	   (long) dst->_begy,
	   (long) dst->_begx,
	   (long) dst->_maxy,
	   (long) dst->_maxx));

	sx1 = src->_begx;
	sy1 = src->_begy;
	sx2 = sx1 + src->_maxx;
	sy2 = sy1 + src->_maxy;

	dx1 = dst->_begx;
	dy1 = dst->_begy;
	dx2 = dx1 + dst->_maxx;
	dy2 = dy1 + dst->_maxy;

	if (dx2 >= sx1 && dx1 <= sx2 && dy2 >= sy1 && dy1 <= sy2) {
	    sminrow = FUNC5(sy1, dy1) - sy1;
	    smincol = FUNC5(sx1, dx1) - sx1;
	    dminrow = FUNC5(sy1, dy1) - dy1;
	    dmincol = FUNC5(sx1, dx1) - dx1;
	    dmaxrow = FUNC6(sy2, dy2) - dy1;
	    dmaxcol = FUNC6(sx2, dx2) - dx1;

	    rc = FUNC4(src, dst,
			 sminrow, smincol,
			 dminrow, dmincol,
			 dmaxrow, dmaxcol,
			 flag);
	}
	FUNC3(curses);
    }
    FUNC7(rc);
}