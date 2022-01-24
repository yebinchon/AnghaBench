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
typedef  int /*<<< orphan*/  va_list ;
struct ui_out {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  buffer; scalar_t__ suppress_output; } ;
typedef  TYPE_1__ mi_out_data ;
typedef  enum ui_align { ____Placeholder_ui_align } ui_align ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_out*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct ui_out*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void
FUNC5 (struct ui_out *uiout, int fldno,
	      int width, enum ui_align align,
	      const char *fldname,
	      const char *format,
	      va_list args)
{
  mi_out_data *data = FUNC3 (uiout);
  if (data->suppress_output)
    return;
  FUNC0 (uiout);
  if (fldname)
    FUNC1 (data->buffer, "%s=\"", fldname);
  else
    FUNC2 ("\"", data->buffer);
  FUNC4 (data->buffer, format, args);
  FUNC2 ("\"", data->buffer);
}