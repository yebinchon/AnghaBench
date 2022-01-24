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
 int /*<<< orphan*/  FUNC0 (struct ui_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_out*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_out*,int /*<<< orphan*/ ,int,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_out*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct ui_out*) ; 
 int /*<<< orphan*/  ui_out_type_tuple ; 

void
FUNC5 (struct ui_out *uiout, int width, enum ui_align alignment,
		 const char *col_name,
		 const char *colhdr)
{
  mi_out_data *data = FUNC4 (uiout);
  if (data->suppress_output)
    return;
  FUNC3 (uiout, NULL, ui_out_type_tuple);
  FUNC1 (uiout, 0, 0, 0, "width", width);
  FUNC1 (uiout, 0, 0, 0, "alignment", alignment);
  FUNC2 (uiout, 0, 0, 0, "col_name", col_name);
  FUNC2 (uiout, 0, width, alignment, "colhdr", colhdr);
  FUNC0 (uiout, ui_out_type_tuple);
}