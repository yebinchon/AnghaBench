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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  is_visible; } ;
struct tui_win_info {TYPE_1__ generic; } ;
struct tui_gen_win_info {int dummy; } ;
struct TYPE_5__ {scalar_t__ is_visible; } ;
struct TYPE_6__ {TYPE_2__ generic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FOCUS_USAGE ; 
 struct tui_win_info* TUI_CMD_WIN ; 
 TYPE_3__* TUI_DATA_WIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char FUNC4 (char) ; 
 struct tui_win_info* FUNC5 (scalar_t__) ; 
 struct tui_win_info* FUNC6 (char*) ; 
 struct tui_win_info* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct tui_gen_win_info*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15 (char *arg, int from_tty)
{
  if (arg != (char *) NULL)
    {
      char *buf_ptr = (char *) FUNC14 (arg);
      int i;
      struct tui_win_info * win_info = (struct tui_win_info *) NULL;

      for (i = 0; (i < FUNC2 (buf_ptr)); i++)
	buf_ptr[i] = FUNC4 (arg[i]);

      if (FUNC3 (buf_ptr, "NEXT"))
	win_info = FUNC5 (FUNC11 ());
      else if (FUNC3 (buf_ptr, "PREV"))
	win_info = FUNC7 (FUNC11 ());
      else
	win_info = FUNC6 (buf_ptr);

      if (win_info == (struct tui_win_info *) NULL || !win_info->generic.is_visible)
	FUNC12 ("Invalid window specified. \n\
The window name specified must be valid and visible.\n");
      else
	{
	  FUNC9 (win_info);
	  FUNC0 (TUI_CMD_WIN->generic.handle, (win_info != TUI_CMD_WIN));
	}

      if (TUI_DATA_WIN && TUI_DATA_WIN->generic.is_visible)
	FUNC8 ();
      FUNC13 (buf_ptr);
      FUNC1 ("Focus set to %s window.\n",
		       FUNC10 ((struct tui_gen_win_info *) FUNC11 ()));
    }
  else
    FUNC12 ("Incorrect Number of Arguments.\n%s", FOCUS_USAGE);
}