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
struct tui_win_info {int dummy; } ;
struct tui_list {int count; scalar_t__* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 struct tui_list* FUNC0 () ; 
 scalar_t__ FUNC1 (struct tui_win_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tui_win_info*) ; 

void
FUNC3 (void)
{
  struct tui_list *list = FUNC0 ();
  int i;

  for (i = 0; i < list->count; i++)
    {
      struct tui_win_info * win = (struct tui_win_info *) list->list[i];

      if (FUNC1 (win, FALSE))
        {
          FUNC2 (win);
        }
    }
}