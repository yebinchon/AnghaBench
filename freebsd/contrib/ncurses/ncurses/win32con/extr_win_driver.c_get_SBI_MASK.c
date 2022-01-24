#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ Top; scalar_t__ Left; int /*<<< orphan*/  Right; int /*<<< orphan*/  Bottom; } ;
struct TYPE_15__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_14__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_13__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_12__ {TYPE_5__ srWindow; TYPE_3__ dwCursorPosition; TYPE_2__ dwMaximumWindowSize; TYPE_1__ dwSize; } ;
struct TYPE_16__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_19__ {TYPE_11__ SBI; TYPE_4__ origin; scalar_t__ buffered; } ;
struct TYPE_18__ {int /*<<< orphan*/  hdl; } ;
typedef  TYPE_6__ TERMINAL_CONTROL_BLOCK ;
typedef  TYPE_7__ Properties ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 TYPE_7__* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int TRUE ; 

__attribute__((used)) static bool
FUNC3(TERMINAL_CONTROL_BLOCK * TCB)
{
    bool rc = FALSE;
    Properties *p = FUNC1(TCB);
    if (FUNC0(TCB->hdl, &(p->SBI))) {
	FUNC2(("GetConsoleScreenBufferInfo"));
	FUNC2(("... buffer(X:%d Y:%d)",
	   p->SBI.dwSize.X,
	   p->SBI.dwSize.Y));
	FUNC2(("... window(X:%d Y:%d)",
	   p->SBI.dwMaximumWindowSize.X,
	   p->SBI.dwMaximumWindowSize.Y));
	FUNC2(("... cursor(X:%d Y:%d)",
	   p->SBI.dwCursorPosition.X,
	   p->SBI.dwCursorPosition.Y));
	FUNC2(("... display(Top:%d Bottom:%d Left:%d Right:%d)",
	   p->SBI.srWindow.Top,
	   p->SBI.srWindow.Bottom,
	   p->SBI.srWindow.Left,
	   p->SBI.srWindow.Right));
	if (p->buffered) {
	    p->origin.X = 0;
	    p->origin.Y = 0;
	} else {
	    p->origin.X = p->SBI.srWindow.Left;
	    p->origin.Y = p->SBI.srWindow.Top;
	}
	rc = TRUE;
    } else {
	FUNC2(("GetConsoleScreenBufferInfo ERR"));
    }
    return rc;
}