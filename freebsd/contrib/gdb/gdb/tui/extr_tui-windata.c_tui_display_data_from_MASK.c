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
struct TYPE_4__ {int regs_content_count; } ;
struct TYPE_5__ {TYPE_1__ data_display_info; } ;
struct TYPE_6__ {TYPE_2__ detail; } ;

/* Variables and functions */
 TYPE_3__* TUI_DATA_WIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 

void
FUNC4 (int element_no, int reuse_windows)
{
  int first_line = (-1);

  if (element_no < TUI_DATA_WIN->detail.data_display_info.regs_content_count)
    first_line = FUNC3 (element_no);
  else
    {				/* calculate the first_line from the element number */
    }

  if (first_line >= 0)
    {
      FUNC2 ((char *) NULL);
      if (!reuse_windows)
	FUNC0 ();
      FUNC1 (first_line);
    }
}