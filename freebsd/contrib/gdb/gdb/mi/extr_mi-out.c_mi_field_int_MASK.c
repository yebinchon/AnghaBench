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
struct ui_out {int dummy; } ;
struct TYPE_3__ {scalar_t__ suppress_output; } ;
typedef  TYPE_1__ mi_out_data ;
typedef  enum ui_align { ____Placeholder_ui_align } ui_align ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_out*,int,int,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 TYPE_1__* FUNC2 (struct ui_out*) ; 

void
FUNC3 (struct ui_out *uiout, int fldno, int width,
              enum ui_align alignment, const char *fldname, int value)
{
  char buffer[20];		/* FIXME: how many chars long a %d can become? */
  mi_out_data *data = FUNC2 (uiout);
  if (data->suppress_output)
    return;

  FUNC1 (buffer, "%d", value);
  FUNC0 (uiout, fldno, width, alignment, fldname, buffer);
}