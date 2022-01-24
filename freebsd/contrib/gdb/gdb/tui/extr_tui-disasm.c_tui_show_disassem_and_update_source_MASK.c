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
union tui_line_or_address {int /*<<< orphan*/  line_no; } ;
struct symtab_and_line {TYPE_1__* symtab; int /*<<< orphan*/  line; } ;
struct TYPE_2__ {char* filename; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ SRC_DISASSEM_COMMAND ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TUI_SRC_WIN ; 
 struct symtab_and_line FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct symtab_and_line*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,union tui_line_or_address,int /*<<< orphan*/ ) ; 

void
FUNC6 (CORE_ADDR start_addr)
{
  struct symtab_and_line sal;

  FUNC3 (start_addr);
  if (FUNC2 () == SRC_DISASSEM_COMMAND)
    {
      union tui_line_or_address val;

      /*
         ** Update what is in the source window if it is displayed too,
         ** note that it follows what is in the disassembly window and visa-versa
       */
      sal = FUNC0 (start_addr, 0);
      val.line_no = sal.line;
      FUNC5 (TUI_SRC_WIN, sal.symtab, val, TRUE);
      if (sal.symtab)
	{
	  FUNC1 (&sal);
	  FUNC4 (sal.symtab->filename);
	}
      else
	FUNC4 ("?");
    }

  return;
}