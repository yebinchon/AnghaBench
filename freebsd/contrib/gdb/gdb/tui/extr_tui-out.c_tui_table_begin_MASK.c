#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int suppress_output; } ;
typedef  TYPE_1__ tui_out_data ;
struct ui_out {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct ui_out*) ; 

void
FUNC2 (struct ui_out *uiout, int nbrofcols,
		 int nr_rows,
		 const char *tblid)
{
  tui_out_data *data = FUNC1 (uiout);
  if (nr_rows == 0)
    data->suppress_output = 1;
  else
    /* Only the table suppresses the output and, fortunately, a table
       is not a recursive data structure. */
    FUNC0 (data->suppress_output == 0);
}