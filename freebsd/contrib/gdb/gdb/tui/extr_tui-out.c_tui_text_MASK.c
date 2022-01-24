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
struct TYPE_3__ {int line; int /*<<< orphan*/  stream; scalar_t__ start_of_line; scalar_t__ suppress_output; } ;
typedef  TYPE_1__ tui_out_data ;
struct ui_out {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 TYPE_1__* FUNC2 (struct ui_out*) ; 

void
FUNC3 (struct ui_out *uiout, const char *string)
{
  tui_out_data *data = FUNC2 (uiout);
  if (data->suppress_output)
    return;
  data->start_of_line ++;
  if (data->line > 0)
    {
      if (FUNC1 (string, '\n') != 0)
        {
          data->line = -1;
          data->start_of_line = 0;
        }
      return;
    }
  if (FUNC1 (string, '\n'))
    data->start_of_line = 0;
  FUNC0 (string, data->stream);
}