#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int y; } ;
struct tui_gen_win_info {int height; int width; TYPE_3__ origin; int /*<<< orphan*/  type; } ;
struct TYPE_15__ {struct tui_gen_win_info generic; void* can_highlight; } ;
struct TYPE_11__ {void* has_locator; struct tui_gen_win_info* execution_info; } ;
struct TYPE_12__ {TYPE_1__ source_info; } ;
struct TYPE_14__ {TYPE_2__ detail; struct tui_gen_win_info generic; void* can_highlight; } ;

/* Variables and functions */
 int /*<<< orphan*/  DONT_BOX_WINDOW ; 
 int /*<<< orphan*/  EXEC_INFO_WIN ; 
 void* FALSE ; 
 int /*<<< orphan*/  LOCATOR_WIN ; 
 scalar_t__ SRC_DISASSEM_COMMAND ; 
 void* TRUE ; 
 TYPE_7__* TUI_CMD_WIN ; 
 TYPE_4__* TUI_DISASM_WIN ; 
 TYPE_4__* TUI_SRC_WIN ; 
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tui_gen_win_info*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__**,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 struct tui_gen_win_info* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct tui_gen_win_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct tui_gen_win_info*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int FUNC12 () ; 
 int FUNC13 () ; 

__attribute__((used)) static void
FUNC14 (void)
{
  if (FUNC5 () != SRC_DISASSEM_COMMAND)
    {
      int cmd_height, src_height, asm_height;

      if (TUI_CMD_WIN != NULL)
	cmd_height = TUI_CMD_WIN->generic.height;
      else
	cmd_height = FUNC12 () / 3;

      src_height = (FUNC12 () - cmd_height) / 2;
      asm_height = FUNC12 () - (src_height + cmd_height);

      if (TUI_SRC_WIN == NULL)
	FUNC4 (&TUI_SRC_WIN, src_height, 0);
      else
	{
	  FUNC1 (&TUI_SRC_WIN->generic,
			   TUI_SRC_WIN->generic.type,
			   src_height,
			   TUI_SRC_WIN->generic.width,
			   TUI_SRC_WIN->detail.source_info.execution_info->width,
			   0);
	  TUI_SRC_WIN->can_highlight = TRUE;
	  FUNC1 (TUI_SRC_WIN->detail.source_info.execution_info,
			   EXEC_INFO_WIN,
			   src_height,
			   3,
			   0,
			   0);
	  FUNC7 (&TUI_SRC_WIN->generic);
	  FUNC7 (TUI_SRC_WIN->detail.source_info.execution_info);
	  TUI_SRC_WIN->detail.source_info.has_locator = FALSE;;
	}
      if (TUI_SRC_WIN != NULL)
	{
	  struct tui_gen_win_info * locator = FUNC6 ();

	  FUNC11 (TUI_SRC_WIN);
	  if (TUI_DISASM_WIN == NULL)
	    {
	      FUNC3 (&TUI_DISASM_WIN, asm_height, src_height - 1);
	      FUNC0 ((void **) & locator,
			       LOCATOR_WIN,
			       2 /* 1 */ ,
			       FUNC13 (),
			       0,
			       (src_height + asm_height) - 1,
			       DONT_BOX_WINDOW);
	    }
	  else
	    {
	      FUNC1 (locator,
			       LOCATOR_WIN,
			       2 /* 1 */ ,
			       FUNC13 (),
			       0,
			       (src_height + asm_height) - 1);
	      TUI_DISASM_WIN->detail.source_info.has_locator = TRUE;
	      FUNC1 (
				&TUI_DISASM_WIN->generic,
				TUI_DISASM_WIN->generic.type,
				asm_height,
				TUI_DISASM_WIN->generic.width,
			TUI_DISASM_WIN->detail.source_info.execution_info->width,
				src_height - 1);
	      FUNC1 (TUI_DISASM_WIN->detail.source_info.execution_info,
			       EXEC_INFO_WIN,
			       asm_height,
			       3,
			       0,
			       src_height - 1);
	      TUI_DISASM_WIN->can_highlight = TRUE;
	      FUNC7 (&TUI_DISASM_WIN->generic);
	      FUNC7 (TUI_DISASM_WIN->detail.source_info.execution_info);
	    }
	  if (TUI_DISASM_WIN != NULL)
	    {
	      TUI_SRC_WIN->detail.source_info.has_locator = FALSE;
	      TUI_DISASM_WIN->detail.source_info.has_locator = TRUE;
	      FUNC7 (locator);
	      FUNC10 ();
	      FUNC11 (TUI_DISASM_WIN);

	      if (TUI_CMD_WIN == NULL)
		FUNC2 (&TUI_CMD_WIN,
				    cmd_height,
				    FUNC12 () - cmd_height);
	      else
		{
		  FUNC1 (&TUI_CMD_WIN->generic,
				   TUI_CMD_WIN->generic.type,
				   TUI_CMD_WIN->generic.height,
				   TUI_CMD_WIN->generic.width,
				   0,
				   TUI_CMD_WIN->generic.origin.y);
		  TUI_CMD_WIN->can_highlight = FALSE;
		  FUNC7 (&TUI_CMD_WIN->generic);
		}
	      if (TUI_CMD_WIN != NULL)
		FUNC8 (&TUI_CMD_WIN->generic);
	    }
	}
      FUNC9 (SRC_DISASSEM_COMMAND);
    }
}