#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* buf; int len; } ;
typedef  char Char ;
typedef  TYPE_1__ CStr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char FUNC2 (char) ; 
 int /*<<< orphan*/ * CcAltMap ; 
 int /*<<< orphan*/ * CcEmacsMap ; 
 int /*<<< orphan*/ * CcKeyMap ; 
 int /*<<< orphan*/  F_COMMAND_NORM ; 
 int /*<<< orphan*/  F_COMPLETE_ALL ; 
 int /*<<< orphan*/  F_EXCHANGE_MARK ; 
 int /*<<< orphan*/  F_EXPAND_GLOB ; 
 int /*<<< orphan*/  F_EXPAND_VARS ; 
 int /*<<< orphan*/  F_LIST_ALL ; 
 int /*<<< orphan*/  F_LIST_GLOB ; 
 int /*<<< orphan*/  F_PATH_NORM ; 
 int /*<<< orphan*/  F_UNASSIGNED ; 
 int NT_NUM_KEYS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  STRvimode ; 
 scalar_t__ VImode ; 
 int /*<<< orphan*/  XK_CMD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(void)
{
    int     i;
    Char    buf[3];
    CStr    cstr;
    cstr.buf = buf;
    cstr.len = 2;

    VImode = 0;
    if (FUNC6(STRvimode))
	FUNC9(STRvimode);
    FUNC10();

    FUNC4();
    for (i = 0; i < NT_NUM_KEYS; i++) {
	CcKeyMap[i] = CcEmacsMap[i];
	CcAltMap[i] = F_UNASSIGNED;
    }
    FUNC7();
    FUNC8();
    buf[0] = FUNC2('\030');
    buf[2] = 0;
    buf[1] = FUNC2('\030');
    FUNC0(&cstr, FUNC5(F_EXCHANGE_MARK), XK_CMD);
    buf[1] = '*';
    FUNC0(&cstr, FUNC5(F_EXPAND_GLOB),   XK_CMD);
    buf[1] = '$';
    FUNC0(&cstr, FUNC5(F_EXPAND_VARS),   XK_CMD);
    buf[1] = 'G';
    FUNC0(&cstr, FUNC5(F_LIST_GLOB),     XK_CMD);
    buf[1] = 'g';
    FUNC0(&cstr, FUNC5(F_LIST_GLOB),     XK_CMD);
    buf[1] = 'n';
    FUNC0(&cstr, FUNC5(F_PATH_NORM),     XK_CMD);
    buf[1] = 'N';
    FUNC0(&cstr, FUNC5(F_PATH_NORM),     XK_CMD);
    buf[1] = '?';
    FUNC0(&cstr, FUNC5(F_COMMAND_NORM),  XK_CMD);
    buf[1] = '\t';
    FUNC0(&cstr, FUNC5(F_COMPLETE_ALL),  XK_CMD);
    buf[1] = FUNC2('\004');	/* ^D */
    FUNC0(&cstr, FUNC5(F_LIST_ALL),      XK_CMD);
    FUNC3();
    FUNC1();
}