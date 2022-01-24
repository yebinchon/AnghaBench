#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  TYPE_1__ color_t ;
struct TYPE_4__ {TYPE_1__* defaultPalette; } ;
typedef  int /*<<< orphan*/  TERMINAL_CONTROL_BLOCK ;
typedef  int /*<<< orphan*/  SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRACE_ATTRS ; 
 int /*<<< orphan*/ * initialize_pair ; 

__attribute__((used)) static void
FUNC7(TERMINAL_CONTROL_BLOCK * TCB, int pair, int f, int b)
{
    SCREEN *sp;

    FUNC0();
    FUNC4();

    if ((initialize_pair != NULL) && FUNC1(f) && FUNC1(b)) {
	const color_t *tp = FUNC2(sp).defaultPalette;

	FUNC6(TRACE_ATTRS,
	   ("initializing pair: pair = %d, fg=(%d,%d,%d), bg=(%d,%d,%d)",
	    pair,
	    tp[f].red, tp[f].green, tp[f].blue,
	    tp[b].red, tp[b].green, tp[b].blue));

	FUNC3("initialize_pair",
		      FUNC5(initialize_pair,
			      pair,
			      tp[f].red, tp[f].green, tp[f].blue,
			      tp[b].red, tp[b].green, tp[b].blue));
    }
}