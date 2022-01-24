#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ Left; scalar_t__ Right; scalar_t__ Top; scalar_t__ Bottom; } ;
struct TYPE_5__ {scalar_t__ X; scalar_t__ Y; } ;
struct TYPE_7__ {TYPE_2__ srWindow; TYPE_1__ dwSize; } ;
struct TYPE_8__ {TYPE_3__ SBI; scalar_t__ buffered; } ;
typedef  int /*<<< orphan*/  TERMINAL_CONTROL_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ERR ; 
 int OK ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(TERMINAL_CONTROL_BLOCK * TCB, int *Lines, int *Cols)
{
    int result = ERR;

    FUNC0();

    FUNC2(*(FUNC3("win32con::drv_size(%p)"), TCB));

    if (FUNC4(TCB) &&
	FUNC1(TCB) != 0 &&
	Lines != NULL &&
	Cols != NULL) {
	if (FUNC1(TCB)->buffered) {
	    *Lines = (int) (FUNC1(TCB)->SBI.dwSize.Y);
	    *Cols = (int) (FUNC1(TCB)->SBI.dwSize.X);
	} else {
	    *Lines = (int) (FUNC1(TCB)->SBI.srWindow.Bottom + 1 -
			    FUNC1(TCB)->SBI.srWindow.Top);
	    *Cols = (int) (FUNC1(TCB)->SBI.srWindow.Right + 1 -
			   FUNC1(TCB)->SBI.srWindow.Left);
	}
	result = OK;
    }
    FUNC5(result);
}