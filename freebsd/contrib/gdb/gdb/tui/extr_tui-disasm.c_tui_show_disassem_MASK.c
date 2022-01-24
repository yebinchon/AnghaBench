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
union tui_line_or_address {int /*<<< orphan*/  addr; } ;
struct tui_win_info {int dummy; } ;
struct symtab {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  DISASSEM_WIN ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SRC_DISASSEM_COMMAND ; 
 int /*<<< orphan*/  TUI_DISASM_WIN ; 
 struct tui_win_info* TUI_SRC_WIN ; 
 struct symtab* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct symtab*,union tui_line_or_address,int /*<<< orphan*/ ) ; 
 struct tui_win_info* FUNC5 () ; 

void
FUNC6 (CORE_ADDR start_addr)
{
  struct symtab *s = FUNC0 (start_addr);
  struct tui_win_info * win_with_focus = FUNC5 ();
  union tui_line_or_address val;

  val.addr = start_addr;
  FUNC1 (DISASSEM_WIN);
  FUNC4 (TUI_DISASM_WIN, s, val, FALSE);
  /*
     ** if the focus was in the src win, put it in the asm win, if the
     ** source view isn't split
   */
  if (FUNC2 () != SRC_DISASSEM_COMMAND && win_with_focus == TUI_SRC_WIN)
    FUNC3 (TUI_DISASM_WIN);

  return;
}