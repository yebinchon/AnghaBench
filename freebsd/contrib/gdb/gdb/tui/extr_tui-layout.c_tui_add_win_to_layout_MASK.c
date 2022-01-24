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
typedef  enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;
typedef  enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;

/* Variables and functions */
#define  DATA_WIN 130 
 int DISASSEM_COMMAND ; 
 int DISASSEM_DATA_COMMAND ; 
#define  DISASSEM_WIN 129 
 int SRC_COMMAND ; 
 int SRC_DATA_COMMAND ; 
 int SRC_DISASSEM_COMMAND ; 
#define  SRC_WIN 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

void
FUNC3 (enum tui_win_type type)
{
  enum tui_layout_type cur_layout = FUNC2 ();

  switch (type)
    {
    case SRC_WIN:
      if (cur_layout != SRC_COMMAND &&
	  cur_layout != SRC_DISASSEM_COMMAND &&
	  cur_layout != SRC_DATA_COMMAND)
	{
	  FUNC1 ();
	  if (cur_layout == DISASSEM_DATA_COMMAND)
	    FUNC0 (SRC_DATA_COMMAND);
	  else
	    FUNC0 (SRC_COMMAND);
	}
      break;
    case DISASSEM_WIN:
      if (cur_layout != DISASSEM_COMMAND &&
	  cur_layout != SRC_DISASSEM_COMMAND &&
	  cur_layout != DISASSEM_DATA_COMMAND)
	{
	  FUNC1 ();
	  if (cur_layout == SRC_DATA_COMMAND)
	    FUNC0 (DISASSEM_DATA_COMMAND);
	  else
	    FUNC0 (DISASSEM_COMMAND);
	}
      break;
    case DATA_WIN:
      if (cur_layout != SRC_DATA_COMMAND &&
	  cur_layout != DISASSEM_DATA_COMMAND)
	{
	  if (cur_layout == DISASSEM_COMMAND)
	    FUNC0 (DISASSEM_DATA_COMMAND);
	  else
	    FUNC0 (SRC_DATA_COMMAND);
	}
      break;
    default:
      break;
    }
}