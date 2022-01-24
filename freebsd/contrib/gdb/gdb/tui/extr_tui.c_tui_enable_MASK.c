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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_3__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LINES ; 
 int /*<<< orphan*/  SRC_COMMAND ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* TUI_CMD_WIN ; 
 int /*<<< orphan*/  TUI_SRC_WIN ; 
 int /*<<< orphan*/  TUI_UNDEFINED_REGS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ deprecated_selected_frame ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  rl_startup_hook ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int tui_active ; 
 int /*<<< orphan*/  tui_current_key_mode ; 
 scalar_t__ tui_finish_init ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  tui_rl_startup_hook ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

void
FUNC23 (void)
{
  if (tui_active)
    return;

  /* To avoid to initialize curses when gdb starts, there is a defered
     curses initialization.  This initialization is made only once
     and the first time the curses mode is entered.  */
  if (tui_finish_init)
    {
      WINDOW *w;

      w = FUNC4 ();
  
      FUNC0 ();
      FUNC8 ();
      /*timeout (1);*/
      FUNC7(w, FALSE);
      FUNC6();
      FUNC5 (w, TRUE);
      FUNC9 ();
      FUNC15 (LINES);
      FUNC16 (COLS);
      FUNC2 ();

      FUNC19 (0);
      FUNC14 (SRC_COMMAND, TUI_UNDEFINED_REGS);
      FUNC17 (TUI_SRC_WIN);
      FUNC5 (TUI_CMD_WIN->generic.handle, TRUE);
      FUNC22 (TUI_CMD_WIN->generic.handle);
      tui_finish_init = 0;
    }
  else
    {
     /* Save the current gdb setting of the terminal.
        Curses will restore this state when endwin() is called.  */
     FUNC3 ();
     FUNC1 (stdscr, TRUE);
   }

  /* Install the TUI specific hooks.  */
  FUNC11 ();
  rl_startup_hook = tui_rl_startup_hook;

  FUNC21 ();
  
  FUNC18 (1);

  tui_active = 1;
  if (deprecated_selected_frame)
     FUNC19 (deprecated_selected_frame);

  /* Restore TUI keymap.  */
  FUNC13 (tui_current_key_mode);
  FUNC12 ();

  /* Update gdb's knowledge of its terminal.  */
  FUNC10 ();
  FUNC20 ();
}