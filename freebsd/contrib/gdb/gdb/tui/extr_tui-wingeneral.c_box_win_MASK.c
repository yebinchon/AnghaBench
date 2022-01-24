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
struct tui_gen_win_info {int /*<<< orphan*/  title; int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int HILITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int tui_active_border_attrs ; 
 int tui_border_attrs ; 
 int /*<<< orphan*/  tui_border_hline ; 
 int /*<<< orphan*/  tui_border_llcorner ; 
 int /*<<< orphan*/  tui_border_lrcorner ; 
 int /*<<< orphan*/  tui_border_ulcorner ; 
 int /*<<< orphan*/  tui_border_urcorner ; 
 int /*<<< orphan*/  tui_border_vline ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4 (struct tui_gen_win_info * win_info, int highlight_flag)
{
  if (win_info && win_info->handle)
    {
      WINDOW *win;
      int attrs;

      win = win_info->handle;
      if (highlight_flag == HILITE)
        attrs = tui_active_border_attrs;
      else
        attrs = tui_border_attrs;

      FUNC2 (win, attrs);
      FUNC3 (win, tui_border_vline, tui_border_vline,
               tui_border_hline, tui_border_hline,
               tui_border_ulcorner, tui_border_urcorner,
               tui_border_llcorner, tui_border_lrcorner);
      if (win_info->title)
        FUNC0 (win, 0, 3, win_info->title);
      FUNC1 (win, attrs);
    }
}