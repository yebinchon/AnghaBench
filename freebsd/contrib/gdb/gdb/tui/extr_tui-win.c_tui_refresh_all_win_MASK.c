#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;
struct TYPE_8__ {scalar_t__ is_visible; } ;
struct TYPE_9__ {TYPE_1__ generic; } ;

/* Variables and functions */
#define  DATA_WIN 130 
#define  DISASSEM_WIN 129 
 int MAX_MAJOR_WINDOWS ; 
#define  SRC_WIN 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curscr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__** tui_win_list ; 

void
FUNC8 (void)
{
  enum tui_win_type type;

  FUNC0 (curscr, TRUE);
  FUNC3 (tui_win_list);
  for (type = SRC_WIN; type < MAX_MAJOR_WINDOWS; type++)
    {
      if (tui_win_list[type] && tui_win_list[type]->generic.is_visible)
	{
	  switch (type)
	    {
	    case SRC_WIN:
	    case DISASSEM_WIN:
	      FUNC6 (tui_win_list[type]);
	      FUNC1 (tui_win_list[type]);
	      FUNC2 (tui_win_list[type]);
	      FUNC7 (tui_win_list[type]);
	      break;
	    case DATA_WIN:
	      FUNC4 ();
	      break;
	    default:
	      break;
	    }
	}
    }
  FUNC5 ();
}