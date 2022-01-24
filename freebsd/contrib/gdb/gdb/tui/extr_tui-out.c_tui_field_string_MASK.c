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
struct TYPE_3__ {scalar_t__ line; int /*<<< orphan*/  start_of_line; scalar_t__ suppress_output; } ;
typedef  TYPE_1__ tui_out_data ;
struct ui_out {int dummy; } ;
typedef  enum ui_align { ____Placeholder_ui_align } ui_align ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ui_out*,int,char const*,char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,scalar_t__) ; 
 int ui_left ; 
 int ui_noalign ; 
 TYPE_1__* FUNC5 (struct ui_out*) ; 
 int /*<<< orphan*/  FUNC6 (struct ui_out*,int) ; 
 int ui_right ; 

void
FUNC7 (struct ui_out *uiout,
		  int fldno,
		  int width,
		  enum ui_align align,
		  const char *fldname,
		  const char *string)
{
  int before = 0;
  int after = 0;

  tui_out_data *data = FUNC5 (uiout);
  if (data->suppress_output)
    return;

  if (fldname && data->line > 0 && FUNC2 (fldname, "file") == 0)
    {
      data->start_of_line ++;
      if (data->line > 0)
        {
          FUNC4 (string, data->line);
        }
      return;
    }
  
  data->start_of_line ++;
  if ((align != ui_noalign) && string)
    {
      before = width - FUNC3 (string);
      if (before <= 0)
	before = 0;
      else
	{
	  if (align == ui_right)
	    after = 0;
	  else if (align == ui_left)
	    {
	      after = before;
	      before = 0;
	    }
	  else
	    /* ui_center */
	    {
	      after = before / 2;
	      before -= after;
	    }
	}
    }

  if (before)
    FUNC6 (uiout, before);
  if (string)
    FUNC1 (uiout, fldno, fldname, "%s", string);
  if (after)
    FUNC6 (uiout, after);

  if (align != ui_noalign)
    FUNC0 ();
}