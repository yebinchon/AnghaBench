#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* has_locator; struct tui_gen_win_info* execution_info; } ;
struct TYPE_7__ {TYPE_1__ source_info; } ;
struct TYPE_8__ {int x; int y; } ;
struct tui_gen_win_info {int height; int width; TYPE_3__ origin; int /*<<< orphan*/  type; } ;
struct tui_win_info {TYPE_2__ detail; struct tui_gen_win_info generic; void* can_highlight; } ;
typedef  enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;
struct TYPE_9__ {struct tui_gen_win_info generic; int /*<<< orphan*/  can_highlight; } ;

/* Variables and functions */
 int /*<<< orphan*/  DONT_BOX_WINDOW ; 
 int /*<<< orphan*/  EXEC_INFO_WIN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LOCATOR_WIN ; 
 int SRC_COMMAND ; 
 void* TRUE ; 
 TYPE_4__* TUI_CMD_WIN ; 
 struct tui_win_info* TUI_DISASM_WIN ; 
 struct tui_win_info* TUI_SRC_WIN ; 
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tui_gen_win_info*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tui_win_info**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tui_win_info**,int,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 struct tui_gen_win_info* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct tui_gen_win_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct tui_gen_win_info*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct tui_win_info*) ; 
 int FUNC12 () ; 
 int FUNC13 () ; 

__attribute__((used)) static void
FUNC14 (enum tui_layout_type layout_type)
{
  if (FUNC5 () != layout_type)
    {
      struct tui_win_info * *win_info_ptr;
      int src_height, cmd_height;
      struct tui_gen_win_info * locator = FUNC6 ();

      if (TUI_CMD_WIN != NULL)
	cmd_height = TUI_CMD_WIN->generic.height;
      else
	cmd_height = FUNC12 () / 3;
      src_height = FUNC12 () - cmd_height;


      if (layout_type == SRC_COMMAND)
	win_info_ptr = &TUI_SRC_WIN;
      else
	win_info_ptr = &TUI_DISASM_WIN;

      if ((*win_info_ptr) == NULL)
	{
	  if (layout_type == SRC_COMMAND)
	    FUNC4 (win_info_ptr, src_height - 1, 0);
	  else
	    FUNC3 (win_info_ptr, src_height - 1, 0);
	  FUNC0 ((void **) & locator,
			   LOCATOR_WIN,
			   2 /* 1 */ ,
			   FUNC13 (),
			   0,
			   src_height - 1,
			   DONT_BOX_WINDOW);
	}
      else
	{
	  FUNC1 (locator,
			   LOCATOR_WIN,
			   2 /* 1 */ ,
			   FUNC13 (),
			   0,
			   src_height - 1);
	  (*win_info_ptr)->detail.source_info.has_locator = TRUE;
	  FUNC1 (
			    &(*win_info_ptr)->generic,
			    (*win_info_ptr)->generic.type,
			    src_height - 1,
			    (*win_info_ptr)->generic.width,
		      (*win_info_ptr)->detail.source_info.execution_info->width,
			    0);
	  FUNC1 ((*win_info_ptr)->detail.source_info.execution_info,
			   EXEC_INFO_WIN,
			   src_height - 1,
			   3,
			   0,
			   0);
	  (*win_info_ptr)->can_highlight = TRUE;
	  FUNC7 (&(*win_info_ptr)->generic);
	  FUNC7 ((*win_info_ptr)->detail.source_info.execution_info);
	}
      if ((*win_info_ptr) != NULL)
	{
	  (*win_info_ptr)->detail.source_info.has_locator = TRUE;
	  FUNC7 (locator);
	  FUNC10 ();
	  FUNC11 (*win_info_ptr);

	  if (TUI_CMD_WIN == NULL)
	    {
	      FUNC2 (&TUI_CMD_WIN, cmd_height, src_height);
	      FUNC8 (&TUI_CMD_WIN->generic);
	    }
	  else
	    {
	      FUNC1 (&TUI_CMD_WIN->generic,
			       TUI_CMD_WIN->generic.type,
			       TUI_CMD_WIN->generic.height,
			       TUI_CMD_WIN->generic.width,
			       TUI_CMD_WIN->generic.origin.x,
			       TUI_CMD_WIN->generic.origin.y);
	      TUI_CMD_WIN->can_highlight = FALSE;
	      FUNC7 (&TUI_CMD_WIN->generic);
	    }
	}
      FUNC9 (layout_type);
    }
}