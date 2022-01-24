#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  empty ;
typedef  char chtype ;
typedef  int /*<<< orphan*/  cchar_t ;
struct TYPE_16__ {int _maxy; int /*<<< orphan*/  _curx; int /*<<< orphan*/  _cury; int /*<<< orphan*/  _leaveok; TYPE_1__* _line; void* _clear; } ;
struct TYPE_15__ {TYPE_2__* drv; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* hwcur ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {char* text; int firstchar; int lastchar; } ;
typedef  TYPE_3__ TERMINAL_CONTROL_BLOCK ;
typedef  int /*<<< orphan*/  SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 int ERR ; 
 int FUNC2 (int) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 int OK ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int _NOCHANGE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,size_t) ; 
 int FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 

__attribute__((used)) static int
FUNC20(TERMINAL_CONTROL_BLOCK * TCB)
{
    int result = ERR;
    int y, nonempty, n, x0, x1, Width, Height;
    SCREEN *sp;

    FUNC0();
    FUNC6();

    FUNC7((FUNC8("win32con::drv_doupdate(%p)"), TCB));
    if (FUNC12(TCB)) {

	Width = FUNC14(sp);
	Height = FUNC15(sp);
	nonempty = FUNC11(Height, FUNC4(sp)->_maxy + 1);

	if ((FUNC1(sp)->_clear || FUNC4(sp)->_clear)) {
	    int x;
#if USE_WIDEC_SUPPORT
	    cchar_t empty[Width];
	    wchar_t blank[2] =
	    {
		L' ', L'\0'
	    };

	    for (x = 0; x < Width; x++)
		setcchar(&empty[x], blank, 0, 0, 0);
#else
	    chtype empty[Width];

	    for (x = 0; x < Width; x++)
		empty[x] = ' ';
#endif

	    for (y = 0; y < nonempty; y++) {
		FUNC9(TCB, y, 0, empty, Width);
		FUNC10(empty,
		       FUNC1(sp)->_line[y].text,
		       (size_t) Width * sizeof(empty[0]));
	    }
	    FUNC1(sp)->_clear = FALSE;
	    FUNC4(sp)->_clear = FALSE;
	    FUNC19(FUNC4(sp));
	}

	for (y = 0; y < nonempty; y++) {
	    x0 = FUNC4(sp)->_line[y].firstchar;
	    if (x0 != _NOCHANGE) {
#if EXP_OPTIMIZE
		int x2;
		int limit = NewScreen(sp)->_line[y].lastchar;
		while ((x1 = EndChange(x0)) <= limit) {
		    while ((x2 = NextChange(x1)) <= limit && x2 <= (x1 + 2)) {
			x1 = x2;
		    }
		    n = x1 - x0 + 1;
		    memcpy(&CurScreen(sp)->_line[y].text[x0],
			   &NewScreen(sp)->_line[y].text[x0],
			   n * sizeof(CurScreen(sp)->_line[y].text[x0]));
		    con_write(TCB,
			      y,
			      x0,
			      &CurScreen(sp)->_line[y].text[x0], n);
		    x0 = NextChange(x1);
		}

		/* mark line changed successfully */
		if (y <= NewScreen(sp)->_maxy) {
		    MARK_NOCHANGE(NewScreen(sp), y);
		}
		if (y <= CurScreen(sp)->_maxy) {
		    MARK_NOCHANGE(CurScreen(sp), y);
		}
#else
		x1 = FUNC4(sp)->_line[y].lastchar;
		n = x1 - x0 + 1;
		if (n > 0) {
		    FUNC10(&FUNC1(sp)->_line[y].text[x0],
			   &FUNC4(sp)->_line[y].text[x0],
			   (size_t) n * sizeof(FUNC1(sp)->_line[y].text[x0]));
		    FUNC9(TCB,
			      y,
			      x0,
			      &FUNC1(sp)->_line[y].text[x0], n);

		    /* mark line changed successfully */
		    if (y <= FUNC4(sp)->_maxy) {
			FUNC3(FUNC4(sp), y);
		    }
		    if (y <= FUNC1(sp)->_maxy) {
			FUNC3(FUNC1(sp), y);
		    }
		}
#endif
	    }
	}

	/* put everything back in sync */
	for (y = nonempty; y <= FUNC4(sp)->_maxy; y++) {
	    FUNC3(FUNC4(sp), y);
	}
	for (y = nonempty; y <= FUNC1(sp)->_maxy; y++) {
	    FUNC3(FUNC1(sp), y);
	}

	if (!FUNC4(sp)->_leaveok) {
	    FUNC1(sp)->_curx = FUNC4(sp)->_curx;
	    FUNC1(sp)->_cury = FUNC4(sp)->_cury;

	    TCB->drv->hwcur(TCB,
			    0, 0,
			    FUNC1(sp)->_cury, FUNC1(sp)->_curx);
	}
	FUNC16(TCB);
	result = OK;
    }
    FUNC13(result);
}