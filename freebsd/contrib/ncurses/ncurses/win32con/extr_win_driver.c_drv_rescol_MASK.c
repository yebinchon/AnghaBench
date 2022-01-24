#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_5__ {int /*<<< orphan*/  hdl; } ;
typedef  TYPE_1__ TERMINAL_CONTROL_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FALSE ; 
 int FOREGROUND_BLUE ; 
 int FOREGROUND_GREEN ; 
 int FOREGROUND_RED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC4(TERMINAL_CONTROL_BLOCK * TCB)
{
    bool res = FALSE;

    FUNC0();
    if (FUNC3(TCB)) {
	WORD a = FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_GREEN;
	FUNC1(TCB->hdl, a);
	FUNC2(TCB);
	res = TRUE;
    }
    return res;
}