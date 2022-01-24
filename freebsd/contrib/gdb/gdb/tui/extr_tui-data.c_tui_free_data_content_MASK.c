#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__** tui_win_content ;
struct tui_gen_win_info {int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_5__ {struct tui_gen_win_info data_window; } ;
struct TYPE_6__ {TYPE_1__ which_element; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_WIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tui_gen_win_info*) ; 

void
FUNC3 (tui_win_content content, int content_size)
{
  int i;

  /*
     ** Remember that data window content elements are of type struct tui_gen_win_info *,
     ** each of which whose single element is a data element.
   */
  for (i = 0; i < content_size; i++)
    {
      struct tui_gen_win_info * generic_win = &content[i]->which_element.data_window;

      if (generic_win != (struct tui_gen_win_info *) NULL)
	{
	  FUNC1 (generic_win->handle);
	  generic_win->handle = (WINDOW *) NULL;
	  FUNC2 (generic_win);
	}
    }
  FUNC0 (content,
	       content_size,
	       DATA_WIN);
}