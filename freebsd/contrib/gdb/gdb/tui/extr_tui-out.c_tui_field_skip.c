
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ suppress_output; } ;
typedef TYPE_1__ tui_out_data ;
struct ui_out {int dummy; } ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;


 int tui_field_string (struct ui_out*,int,int,int,char const*,char*) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
tui_field_skip (struct ui_out *uiout, int fldno, int width,
  enum ui_align alignment,
  const char *fldname)
{
  tui_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;
  tui_field_string (uiout, fldno, width, alignment, fldname, "");
}
