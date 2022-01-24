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
struct ui_file {int dummy; } ;
struct tui_asm_line {void* insn; void* addr_string; scalar_t__ addr; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*) ; 
 struct ui_file* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC8 (struct tui_asm_line* asm_lines, CORE_ADDR pc, int count)
{
  struct ui_file *gdb_dis_out;

  /* now init the ui_file structure */
  gdb_dis_out = FUNC3 (256);

  /* Now construct each line */
  for (; count > 0; count--, asm_lines++)
    {
      if (asm_lines->addr_string)
        FUNC6 (asm_lines->addr_string);
      if (asm_lines->insn)
        FUNC6 (asm_lines->insn);
      
      FUNC1 (pc, gdb_dis_out);
      asm_lines->addr = pc;
      asm_lines->addr_string = FUNC7 (FUNC2 (gdb_dis_out));

      FUNC5 (gdb_dis_out);

      pc = pc + FUNC0 (pc, gdb_dis_out);

      asm_lines->insn = FUNC7 (FUNC2 (gdb_dis_out));

      /* reset the buffer to empty */
      FUNC5 (gdb_dis_out);
    }
  FUNC4 (gdb_dis_out);
  return pc;
}