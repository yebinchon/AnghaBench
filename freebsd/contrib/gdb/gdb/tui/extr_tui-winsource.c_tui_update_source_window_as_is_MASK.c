#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union tui_line_or_address {int line_no; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {scalar_t__ type; int content_size; } ;
struct tui_win_info {TYPE_1__ generic; } ;
struct symtab_and_line {int line; struct symtab* symtab; } ;
struct symtab {int dummy; } ;
typedef  enum tui_status { ____Placeholder_tui_status } tui_status ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTY_SOURCE_PROMPT ; 
 scalar_t__ SRC_DISASSEM_COMMAND ; 
 scalar_t__ SRC_WIN ; 
 scalar_t__ TUI_DISASM_WIN ; 
 int TUI_FAILURE ; 
 int /*<<< orphan*/  TUI_SRC_WIN ; 
 int /*<<< orphan*/  FUNC0 (struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC1 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct tui_win_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct symtab*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct tui_win_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tui_win_info*) ; 
 scalar_t__ FUNC10 () ; 

void
FUNC11 (struct tui_win_info * win_info, struct symtab *s,
				union tui_line_or_address line_or_addr, int noerror)
{
  enum tui_status ret;

  if (win_info->generic.type == SRC_WIN)
    ret = FUNC5 (s, line_or_addr.line_no, noerror);
  else
    ret = FUNC4 (line_or_addr.addr);

  if (ret == TUI_FAILURE)
    {
      FUNC2 (win_info, EMPTY_SOURCE_PROMPT);
      FUNC1 (win_info);
    }
  else
    {
      FUNC8 (win_info, 0);
      FUNC7 (win_info);
      FUNC9 (win_info);
      if (win_info->generic.type == SRC_WIN)
	{
	  struct symtab_and_line sal;
	  
	  sal.line = line_or_addr.line_no +
	    (win_info->generic.content_size - 2);
	  sal.symtab = s;
	  FUNC0 (&sal);
	  /*
	     ** If the focus was in the asm win, put it in the src
	     ** win if we don't have a split layout
	   */
	  if (FUNC10 () == TUI_DISASM_WIN &&
	      FUNC3 () != SRC_DISASSEM_COMMAND)
	    FUNC6 (TUI_SRC_WIN);
	}
    }


  return;
}