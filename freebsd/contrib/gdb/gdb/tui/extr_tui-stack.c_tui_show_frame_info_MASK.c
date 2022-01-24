#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int line_no; int /*<<< orphan*/  addr; } ;
union tui_which_element {TYPE_2__ locator; } ;
union tui_line_or_address {int line_no; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int viewport_height; } ;
struct tui_win_info {TYPE_1__ generic; } ;
struct tui_win_element {union tui_which_element which_element; } ;
struct tui_gen_win_info {scalar_t__* content; } ;
struct symtab_and_line {TYPE_3__* symtab; int /*<<< orphan*/  line; } ;
struct frame_info {int dummy; } ;
struct TYPE_8__ {int count; scalar_t__* list; } ;
struct TYPE_7__ {char* filename; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTY_SOURCE_PROMPT ; 
 int /*<<< orphan*/  TRUE ; 
 struct tui_win_info* TUI_DISASM_WIN ; 
 struct tui_win_info* TUI_SRC_WIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,struct symtab_and_line*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tui_win_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tui_win_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,struct tui_win_info*,int /*<<< orphan*/ ) ; 
 struct tui_gen_win_info* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (union tui_line_or_address,struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (char*) ; 
 TYPE_4__* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct tui_win_info*,TYPE_3__*,union tui_line_or_address,int /*<<< orphan*/ ) ; 

void
FUNC17 (struct frame_info *fi)
{
  struct tui_win_info * win_info;
  int i;

  if (fi)
    {
      int start_line, i;
      CORE_ADDR low;
      struct tui_gen_win_info * locator = FUNC9 ();
      int source_already_displayed;
      struct symtab_and_line sal;

      FUNC1 (fi, &sal);

      source_already_displayed = sal.symtab != 0
        && FUNC13 (sal.symtab->filename);
      FUNC11 (sal.symtab == 0 ? "??" : sal.symtab->filename,
                            FUNC6 (fi),
                            sal.line,
                            FUNC3 (fi));
      FUNC12 ();
      start_line = 0;
      for (i = 0; i < (FUNC14 ())->count; i++)
	{
	  union tui_which_element *item;
	  win_info = (struct tui_win_info *) (FUNC14 ())->list[i];

	  item = &((struct tui_win_element *) locator->content[0])->which_element;
	  if (win_info == TUI_SRC_WIN)
	    {
	      start_line = (item->locator.line_no -
			   (win_info->generic.viewport_height / 2)) + 1;
	      if (start_line <= 0)
		start_line = 1;
	    }
	  else
	    {
	      if (FUNC2 (FUNC3 (fi), (char **) NULL,
					    &low, (CORE_ADDR) NULL) == 0)
		FUNC0 ("No function contains program counter for selected frame.\n");
	      else
		low = FUNC7 (low, FUNC3 (fi));
	    }

	  if (win_info == TUI_SRC_WIN)
	    {
	      union tui_line_or_address l;
	      l.line_no = start_line;
	      if (!(source_already_displayed
		    && FUNC8 (item->locator.line_no, win_info, TRUE)))
		FUNC16 (win_info, sal.symtab, l, TRUE);
	      else
		{
		  l.line_no = item->locator.line_no;
		  FUNC10 (l, win_info);
		}
	    }
	  else
	    {
	      if (win_info == TUI_DISASM_WIN)
		{
		  union tui_line_or_address a;
		  a.addr = low;
		  if (!FUNC4 (item->locator.addr, win_info, TRUE))
		    FUNC16 (win_info, sal.symtab, a, TRUE);
		  else
		    {
		      a.addr = item->locator.addr;
		      FUNC10 (a, win_info);
		    }
		}
	    }
	  FUNC15 (win_info);
	}
    }
  else
    {
      FUNC11 (NULL, NULL, 0, (CORE_ADDR) 0);
      FUNC12 ();
      for (i = 0; i < (FUNC14 ())->count; i++)
	{
	  win_info = (struct tui_win_info *) (FUNC14 ())->list[i];
	  FUNC5 (win_info, EMPTY_SOURCE_PROMPT);
	  FUNC15 (win_info);
	}
    }
}