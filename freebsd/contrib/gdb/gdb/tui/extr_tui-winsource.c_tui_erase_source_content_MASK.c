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
struct TYPE_2__ {int width; scalar_t__ type; int height; int /*<<< orphan*/ * handle; } ;
struct tui_win_info {TYPE_1__ generic; } ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int EMPTY_SOURCE_PROMPT ; 
 char* NO_DISASSEM_STRING ; 
 char* NO_SRC_STRING ; 
 scalar_t__ SRC_WIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct tui_win_info*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6 (struct tui_win_info * win_info, int display_prompt)
{
  int x_pos;
  int half_width = (win_info->generic.width - 2) / 2;

  if (win_info->generic.handle != (WINDOW *) NULL)
    {
      FUNC5 (win_info->generic.handle);
      FUNC2 (win_info);
      if (display_prompt == EMPTY_SOURCE_PROMPT)
	{
	  char *no_src_str;

	  if (win_info->generic.type == SRC_WIN)
	    no_src_str = NO_SRC_STRING;
	  else
	    no_src_str = NO_DISASSEM_STRING;
	  if (FUNC1 (no_src_str) >= half_width)
	    x_pos = 1;
	  else
	    x_pos = half_width - FUNC1 (no_src_str);
	  FUNC0 (win_info->generic.handle,
		     (win_info->generic.height / 2),
		     x_pos,
		     no_src_str);

	  /* elz: added this function call to set the real contents of
	     the window to what is on the  screen, so that later calls
	     to refresh, do display
	     the correct stuff, and not the old image */

	  FUNC4 (win_info, no_src_str);
	}
      FUNC3 (&win_info->generic);
    }
}