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
struct tui_win_info {int /*<<< orphan*/  can_highlight; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WIN ; 
 int /*<<< orphan*/  DONT_BOX_WINDOW ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2 (struct tui_win_info * * win_info_ptr, int height, int origin_y)
{
  FUNC0 ((void **) win_info_ptr,
		   CMD_WIN,
		   height,
		   FUNC1 (),
		   0,
		   origin_y,
		   DONT_BOX_WINDOW);

  (*win_info_ptr)->can_highlight = FALSE;
}