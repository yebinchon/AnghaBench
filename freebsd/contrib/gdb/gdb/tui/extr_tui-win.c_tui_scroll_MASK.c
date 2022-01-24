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
typedef  enum tui_scroll_direction { ____Placeholder_tui_scroll_direction } tui_scroll_direction ;

/* Variables and functions */
#define  BACKWARD_SCROLL 131 
#define  FORWARD_SCROLL 130 
#define  LEFT_SCROLL 129 
#define  RIGHT_SCROLL 128 
 int /*<<< orphan*/  FUNC0 (struct tui_win_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tui_win_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tui_win_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tui_win_info*,int) ; 

void
FUNC4 (enum tui_scroll_direction direction,
	    struct tui_win_info * win_to_scroll,
	    int num_to_scroll)
{
  switch (direction)
    {
    case FORWARD_SCROLL:
      FUNC1 (win_to_scroll, num_to_scroll);
      break;
    case BACKWARD_SCROLL:
      FUNC0 (win_to_scroll, num_to_scroll);
      break;
    case LEFT_SCROLL:
      FUNC2 (win_to_scroll, num_to_scroll);
      break;
    case RIGHT_SCROLL:
      FUNC3 (win_to_scroll, num_to_scroll);
      break;
    default:
      break;
    }
}