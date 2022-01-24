#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data_content_count; } ;
struct TYPE_6__ {TYPE_1__ data_display_info; } ;
struct TYPE_7__ {TYPE_2__ detail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* TUI_DATA_WIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

void
FUNC3 (int line_no)
{
  int _line_no = line_no;

  if (line_no < 0)
    _line_no = 0;

  FUNC0 (TUI_DATA_WIN);

  /* there is no general data, force regs to display (if there are any) */
  if (TUI_DATA_WIN->detail.data_display_info.data_content_count <= 0)
    FUNC1 (_line_no, TRUE);
  else
    {
      int element_no, start_line_no;
      int regs_last_line = FUNC2 ();


      /* display regs if we can */
      if (FUNC1 (_line_no, FALSE) < 0)
	{			/*
				   ** _line_no is past the regs display, so calc where the
				   ** start data element is
				 */
	  if (regs_last_line < _line_no)
	    {			/* figure out how many lines each element is to obtain
				   the start element_no */
	    }
	}
      else
	{			/*
				   ** calculate the starting element of the data display, given
				   ** regs_last_line and how many lines each element is, up to
				   ** _line_no
				 */
	}
      /* Now display the data , starting at element_no */
    }
}