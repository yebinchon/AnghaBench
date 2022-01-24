#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum tui_scroll_direction { ____Placeholder_tui_scroll_direction } tui_scroll_direction ;
struct TYPE_4__ {int regs_content_count; } ;
struct TYPE_5__ {TYPE_1__ data_display_info; } ;
struct TYPE_6__ {TYPE_2__ detail; } ;

/* Variables and functions */
 int FORWARD_SCROLL ; 
 TYPE_3__* TUI_DATA_WIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int FUNC4 (int) ; 

void
FUNC5 (enum tui_scroll_direction scroll_direction, int num_to_scroll)
{
  int first_element_no;
  int first_line = (-1);

  first_element_no = FUNC3 ();
  if (first_element_no < TUI_DATA_WIN->detail.data_display_info.regs_content_count)
    first_line = FUNC4 (first_element_no);
  else
    {				/* calculate the first line from the element number which is in
				   ** the general data content
				 */
    }

  if (first_line >= 0)
    {
      int last_element_no, last_line;

      if (scroll_direction == FORWARD_SCROLL)
	first_line += num_to_scroll;
      else
	first_line -= num_to_scroll;
      FUNC2 ((char *) NULL);
      FUNC0 ();
      FUNC1 (first_line);
    }
}