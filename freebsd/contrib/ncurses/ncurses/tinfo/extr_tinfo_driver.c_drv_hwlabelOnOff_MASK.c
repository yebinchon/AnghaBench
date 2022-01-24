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
struct TYPE_3__ {int /*<<< orphan*/ * csp; } ;
typedef  TYPE_1__ TERMINAL_CONTROL_BLOCK ;
typedef  int /*<<< orphan*/  SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  label_off ; 
 int /*<<< orphan*/  label_on ; 

__attribute__((used)) static void
FUNC2(TERMINAL_CONTROL_BLOCK * TCB, int OnFlag)
{
    SCREEN *sp = TCB->csp;

    FUNC0();
    if (OnFlag) {
	FUNC1("label_on", label_on);
    } else {
	FUNC1("label_off", label_off);
    }
}