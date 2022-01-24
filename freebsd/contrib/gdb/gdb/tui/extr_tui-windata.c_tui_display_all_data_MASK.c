#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tui_win_content ;
struct TYPE_7__ {scalar_t__ data_content; scalar_t__ data_content_count; } ;
struct TYPE_8__ {TYPE_2__ data_display_info; } ;
struct TYPE_6__ {scalar_t__ content_size; } ;
struct TYPE_9__ {TYPE_3__ detail; TYPE_1__ generic; } ;

/* Variables and functions */
 char* NO_DATA_STRING ; 
 TYPE_4__* TUI_DATA_WIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4 (void)
{
  if (TUI_DATA_WIN->generic.content_size <= 0)
    FUNC3 (NO_DATA_STRING);
  else
    {
      FUNC3 ((char *) NULL);
      FUNC1 ();
      FUNC0 (TUI_DATA_WIN);
      FUNC2 (0);
      /*
         ** Then display the other data
       */
      if (TUI_DATA_WIN->detail.data_display_info.data_content !=
	  (tui_win_content) NULL &&
	  TUI_DATA_WIN->detail.data_display_info.data_content_count > 0)
	{
	}
    }
}