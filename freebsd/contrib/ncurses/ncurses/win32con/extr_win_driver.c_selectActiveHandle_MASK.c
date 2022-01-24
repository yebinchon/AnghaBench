#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ lastOut; } ;
struct TYPE_5__ {scalar_t__ hdl; } ;
typedef  TYPE_1__ TERMINAL_CONTROL_BLOCK ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(TERMINAL_CONTROL_BLOCK * TCB)
{
    if (FUNC0(TCB)->lastOut != TCB->hdl) {
	FUNC0(TCB)->lastOut = TCB->hdl;
	FUNC1(FUNC0(TCB)->lastOut);
    }
}