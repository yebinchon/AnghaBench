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
struct tui_win_info {int /*<<< orphan*/  generic; } ;

/* Variables and functions */
 int MAX_MAJOR_WINDOWS ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,scalar_t__) ; 
 struct tui_win_info** tui_win_list ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 

struct tui_win_info *
FUNC3 (char *name)
{
  struct tui_win_info * win_info = (struct tui_win_info *) NULL;

  if (name != (char *) NULL)
    {
      int i = 0;

      while (i < MAX_MAJOR_WINDOWS && win_info == NULL)
	{
          if (tui_win_list[i] != 0)
            {
              char *cur_name = FUNC2 (&tui_win_list[i]->generic);
              if (FUNC0 (name) <= FUNC0 (cur_name) &&
                  FUNC1 (name, cur_name, FUNC0 (name)) == 0)
                win_info = tui_win_list[i];
            }
	  i++;
	}
    }

  return win_info;
}