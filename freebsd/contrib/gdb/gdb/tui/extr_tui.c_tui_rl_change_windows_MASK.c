#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum tui_register_display_type { ____Placeholder_tui_register_display_type } tui_register_display_type ;
typedef  enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;

/* Variables and functions */
#define  DISASSEM_COMMAND 132 
#define  DISASSEM_DATA_COMMAND 131 
#define  SRC_COMMAND 130 
#define  SRC_DATA_COMMAND 129 
#define  SRC_DISASSEM_COMMAND 128 
 int TUI_UNDEFINED_REGS ; 
 scalar_t__ tui_active ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3 (int notused1, int notused2)
{
  if (!tui_active)
    FUNC1 (0/*notused*/, 0/*notused*/);

  if (tui_active)
    {
      enum tui_layout_type new_layout;
      enum tui_register_display_type regs_type = TUI_UNDEFINED_REGS;

      new_layout = FUNC0 ();

      /* Select a new layout to have a rolling layout behavior
	 with always two windows (except when undefined).  */
      switch (new_layout)
	{
	case SRC_COMMAND:
	  new_layout = SRC_DISASSEM_COMMAND;
	  break;

	case DISASSEM_COMMAND:
	  new_layout = SRC_DISASSEM_COMMAND;
	  break;

	case SRC_DATA_COMMAND:
	  new_layout = SRC_DISASSEM_COMMAND;
	  break;

	case SRC_DISASSEM_COMMAND:
	  new_layout = DISASSEM_DATA_COMMAND;
	  break;
	  
	case DISASSEM_DATA_COMMAND:
	  new_layout = SRC_DATA_COMMAND;
	  break;

	default:
	  new_layout = SRC_COMMAND;
	  break;
	}
      FUNC2 (new_layout, regs_type);
    }
  return 0;
}