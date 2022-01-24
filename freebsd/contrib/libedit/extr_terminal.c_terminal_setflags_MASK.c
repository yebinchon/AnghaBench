#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ t_tabs; } ;
struct TYPE_5__ {int /*<<< orphan*/  el_errfile; TYPE_1__ el_tty; } ;
typedef  TYPE_2__ EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  EL_CAN_CEOL ; 
 int /*<<< orphan*/  EL_CAN_DELETE ; 
 int /*<<< orphan*/  EL_CAN_INSERT ; 
 int /*<<< orphan*/  EL_CAN_UP ; 
 int /*<<< orphan*/  EL_FLAGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TERM_CAN_CEOL ; 
 int /*<<< orphan*/  TERM_CAN_DELETE ; 
 int /*<<< orphan*/  TERM_CAN_INSERT ; 
 int /*<<< orphan*/  TERM_CAN_ME ; 
 int /*<<< orphan*/  TERM_CAN_TAB ; 
 int /*<<< orphan*/  TERM_CAN_UP ; 
 int /*<<< orphan*/  TERM_HAS_AUTO_MARGINS ; 
 int /*<<< orphan*/  TERM_HAS_MAGIC_MARGINS ; 
 int /*<<< orphan*/  TERM_HAS_META ; 
 int /*<<< orphan*/  T_DC ; 
 int /*<<< orphan*/  T_IC ; 
 int /*<<< orphan*/  T_MT ; 
 int /*<<< orphan*/  T_UP ; 
 int /*<<< orphan*/  T_am ; 
 int /*<<< orphan*/  T_ce ; 
 int /*<<< orphan*/  T_dc ; 
 int /*<<< orphan*/  T_ic ; 
 int /*<<< orphan*/  T_im ; 
 int /*<<< orphan*/  T_km ; 
 int /*<<< orphan*/  T_me ; 
 int /*<<< orphan*/  T_pt ; 
 int /*<<< orphan*/  T_se ; 
 int /*<<< orphan*/  T_ue ; 
 int /*<<< orphan*/  T_up ; 
 int /*<<< orphan*/  T_xn ; 
 int /*<<< orphan*/  T_xt ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(EditLine *el)
{
	EL_FLAGS = 0;
	if (el->el_tty.t_tabs)
		EL_FLAGS |= (FUNC2(T_pt) && !FUNC2(T_xt)) ? TERM_CAN_TAB : 0;

	EL_FLAGS |= (FUNC2(T_km) || FUNC2(T_MT)) ? TERM_HAS_META : 0;
	EL_FLAGS |= FUNC0(T_ce) ? TERM_CAN_CEOL : 0;
	EL_FLAGS |= (FUNC0(T_dc) || FUNC0(T_DC)) ? TERM_CAN_DELETE : 0;
	EL_FLAGS |= (FUNC0(T_im) || FUNC0(T_ic) || FUNC0(T_IC)) ?
	    TERM_CAN_INSERT : 0;
	EL_FLAGS |= (FUNC0(T_up) || FUNC0(T_UP)) ? TERM_CAN_UP : 0;
	EL_FLAGS |= FUNC2(T_am) ? TERM_HAS_AUTO_MARGINS : 0;
	EL_FLAGS |= FUNC2(T_xn) ? TERM_HAS_MAGIC_MARGINS : 0;

	if (FUNC0(T_me) && FUNC0(T_ue))
		EL_FLAGS |= (FUNC4(FUNC1(T_me), FUNC1(T_ue)) == 0) ?
		    TERM_CAN_ME : 0;
	else
		EL_FLAGS &= ~TERM_CAN_ME;
	if (FUNC0(T_me) && FUNC0(T_se))
		EL_FLAGS |= (FUNC4(FUNC1(T_me), FUNC1(T_se)) == 0) ?
		    TERM_CAN_ME : 0;


#ifdef DEBUG_SCREEN
	if (!EL_CAN_UP) {
		(void) fprintf(el->el_errfile,
		    "WARNING: Your terminal cannot move up.\n");
		(void) fprintf(el->el_errfile,
		    "Editing may be odd for long lines.\n");
	}
	if (!EL_CAN_CEOL)
		(void) fprintf(el->el_errfile, "no clear EOL capability.\n");
	if (!EL_CAN_DELETE)
		(void) fprintf(el->el_errfile, "no delete char capability.\n");
	if (!EL_CAN_INSERT)
		(void) fprintf(el->el_errfile, "no insert char capability.\n");
#endif /* DEBUG_SCREEN */
}