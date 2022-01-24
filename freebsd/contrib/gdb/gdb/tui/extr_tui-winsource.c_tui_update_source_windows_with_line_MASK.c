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
union tui_line_or_address {int line_no; } ;
struct symtab {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
#define  DISASSEM_COMMAND 129 
#define  DISASSEM_DATA_COMMAND 128 
 int /*<<< orphan*/  FALSE ; 
 int SRC_DISASSEM_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (struct symtab*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct symtab*,union tui_line_or_address,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5 (struct symtab *s, int line)
{
  CORE_ADDR pc;
  union tui_line_or_address l;
  
  switch (FUNC1 ())
    {
    case DISASSEM_COMMAND:
    case DISASSEM_DATA_COMMAND:
      FUNC0 (s, line, &pc);
      FUNC4 (pc);
      break;
    default:
      l.line_no = line;
      FUNC3 (s, l, FALSE);
      if (FUNC1 () == SRC_DISASSEM_COMMAND)
	{
	  FUNC0 (s, line, &pc);
	  FUNC2 (pc);
	}
      break;
    }

  return;
}