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
typedef  enum tui_status { ____Placeholder_tui_status } tui_status ;
typedef  enum tui_register_display_type { ____Placeholder_tui_register_display_type } tui_register_display_type ;
typedef  enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;
struct TYPE_4__ {scalar_t__ regs_display_type; } ;
struct TYPE_5__ {TYPE_1__ data_display_info; } ;
struct TYPE_6__ {TYPE_2__ detail; } ;

/* Variables and functions */
 int DISASSEM_COMMAND ; 
 int DISASSEM_DATA_COMMAND ; 
 int SRC_COMMAND ; 
 int SRC_DATA_COMMAND ; 
 int SRC_DISASSEM_COMMAND ; 
 TYPE_3__* TUI_DATA_WIN ; 
 scalar_t__ TUI_DFLOAT_REGS ; 
 int TUI_FAILURE ; 
 char* TUI_FLOAT_REGS_NAME ; 
 int TUI_GENERAL_AND_SPECIAL_REGS ; 
 int TUI_GENERAL_REGS ; 
 char* TUI_GENERAL_REGS_NAME ; 
 char* TUI_GENERAL_SPECIAL_REGS_NAME ; 
 scalar_t__ TUI_SFLOAT_REGS ; 
 int TUI_SPECIAL_REGS ; 
 char* TUI_SPECIAL_REGS_NAME ; 
 int TUI_SUCCESS ; 
 scalar_t__ TUI_UNDEFINED_REGS ; 
 int UNDEFINED_LAYOUT ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char FUNC4 (char) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char const*) ; 

enum tui_status
FUNC10 (const char *layout_name)
{
  enum tui_status status = TUI_SUCCESS;

  if (layout_name != (char *) NULL)
    {
      int i;
      char *buf_ptr;
      enum tui_layout_type new_layout = UNDEFINED_LAYOUT;
      enum tui_register_display_type dpy_type = TUI_UNDEFINED_REGS;
      enum tui_layout_type cur_layout = FUNC5 ();

      buf_ptr = (char *) FUNC9 (layout_name);
      for (i = 0; (i < FUNC2 (layout_name)); i++)
	buf_ptr[i] = FUNC4 (buf_ptr[i]);

      /* First check for ambiguous input */
      if (FUNC2 (buf_ptr) <= 1 && (*buf_ptr == 'S' || *buf_ptr == '$'))
	{
	  FUNC7 ("Ambiguous command input.\n");
	  status = TUI_FAILURE;
	}
      else
	{
	  if (FUNC3 (buf_ptr, "SRC"))
	    new_layout = SRC_COMMAND;
	  else if (FUNC3 (buf_ptr, "ASM"))
	    new_layout = DISASSEM_COMMAND;
	  else if (FUNC3 (buf_ptr, "SPLIT"))
	    new_layout = SRC_DISASSEM_COMMAND;
	  else if (FUNC3 (buf_ptr, "REGS") ||
		   FUNC3 (buf_ptr, TUI_GENERAL_SPECIAL_REGS_NAME) ||
		   FUNC3 (buf_ptr, TUI_GENERAL_REGS_NAME) ||
		   FUNC3 (buf_ptr, TUI_FLOAT_REGS_NAME) ||
		   FUNC3 (buf_ptr, TUI_SPECIAL_REGS_NAME))
	    {
	      if (cur_layout == SRC_COMMAND || cur_layout == SRC_DATA_COMMAND)
		new_layout = SRC_DATA_COMMAND;
	      else
		new_layout = DISASSEM_DATA_COMMAND;

/* could ifdef out the following code. when compile with -z, there are null 
   pointer references that cause a core dump if 'layout regs' is the first 
   layout command issued by the user. HP has asked us to hook up this code 
   - edie epstein
 */
	      if (FUNC3 (buf_ptr, TUI_FLOAT_REGS_NAME))
		{
		  if (TUI_DATA_WIN->detail.data_display_info.regs_display_type !=
		      TUI_SFLOAT_REGS &&
		      TUI_DATA_WIN->detail.data_display_info.regs_display_type !=
		      TUI_DFLOAT_REGS)
		    dpy_type = TUI_SFLOAT_REGS;
		  else
		    dpy_type =
		      TUI_DATA_WIN->detail.data_display_info.regs_display_type;
		}
	      else if (FUNC3 (buf_ptr,
				      TUI_GENERAL_SPECIAL_REGS_NAME))
		dpy_type = TUI_GENERAL_AND_SPECIAL_REGS;
	      else if (FUNC3 (buf_ptr, TUI_GENERAL_REGS_NAME))
		dpy_type = TUI_GENERAL_REGS;
	      else if (FUNC3 (buf_ptr, TUI_SPECIAL_REGS_NAME))
		dpy_type = TUI_SPECIAL_REGS;
	      else if (TUI_DATA_WIN)
		{
		  if (TUI_DATA_WIN->detail.data_display_info.regs_display_type !=
		      TUI_UNDEFINED_REGS)
		    dpy_type =
		      TUI_DATA_WIN->detail.data_display_info.regs_display_type;
		  else
		    dpy_type = TUI_GENERAL_REGS;
		}

/* end of potential ifdef 
 */

/* if ifdefed out code above, then assume that the user wishes to display the 
   general purpose registers 
 */

/*              dpy_type = TUI_GENERAL_REGS; 
 */
	    }
	  else if (FUNC3 (buf_ptr, "NEXT"))
	    new_layout = FUNC0 ();
	  else if (FUNC3 (buf_ptr, "PREV"))
	    new_layout = FUNC1 ();
	  else
	    status = TUI_FAILURE;
	  FUNC8 (buf_ptr);

	  FUNC6 (new_layout, dpy_type);
	}
    }
  else
    status = TUI_FAILURE;

  return status;
}