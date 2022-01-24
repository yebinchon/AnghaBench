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
struct tui_win_info {int dummy; } ;
struct symtab_and_line {int /*<<< orphan*/  symtab; int /*<<< orphan*/  line; } ;
struct TYPE_2__ {int count; scalar_t__* list; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
#define  DISASSEM_COMMAND 130 
#define  DISASSEM_DATA_COMMAND 129 
 int /*<<< orphan*/  EMPTY_SOURCE_PROMPT ; 
 int /*<<< orphan*/  FALSE ; 
#define  SRC_DISASSEM_COMMAND 128 
 struct symtab_and_line FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct tui_win_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,union tui_line_or_address,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 () ; 

void
FUNC8 (CORE_ADDR addr)
{
  if (addr != 0)
    {
      struct symtab_and_line sal;
      union tui_line_or_address l;
      
      switch (FUNC3 ())
	{
	case DISASSEM_COMMAND:
	case DISASSEM_DATA_COMMAND:
	  FUNC4 (addr);
	  break;
	case SRC_DISASSEM_COMMAND:
	  FUNC5 (addr);
	  break;
	default:
	  sal = FUNC0 (addr, 0);
	  l.line_no = sal.line;
	  FUNC6 (sal.symtab, l, FALSE);
	  break;
	}
    }
  else
    {
      int i;

      for (i = 0; i < (FUNC7 ())->count; i++)
	{
	  struct tui_win_info * win_info = (struct tui_win_info *) (FUNC7 ())->list[i];

	  FUNC2 (win_info, EMPTY_SOURCE_PROMPT);
	  FUNC1 (win_info);
	}
    }
}