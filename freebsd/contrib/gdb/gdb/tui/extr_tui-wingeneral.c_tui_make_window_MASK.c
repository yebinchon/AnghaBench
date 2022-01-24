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
struct TYPE_2__ {int /*<<< orphan*/  x; int /*<<< orphan*/  y; } ;
struct tui_gen_win_info {int /*<<< orphan*/  is_visible; int /*<<< orphan*/ * handle; TYPE_1__ origin; int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int BOX_WINDOW ; 
 int /*<<< orphan*/  NO_HILITE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct tui_gen_win_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3 (struct tui_gen_win_info * win_info, int box_it)
{
  WINDOW *handle;

  handle = FUNC1 (win_info->height,
		   win_info->width,
		   win_info->origin.y,
		   win_info->origin.x);
  win_info->handle = handle;
  if (handle != (WINDOW *) NULL)
    {
      if (box_it == BOX_WINDOW)
	FUNC0 (win_info, NO_HILITE);
      win_info->is_visible = TRUE;
      FUNC2 (handle, TRUE);
    }
}