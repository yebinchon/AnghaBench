
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ suppress_output; } ;
typedef TYPE_1__ tui_out_data ;
struct ui_out {int dummy; } ;


 int tui_text (struct ui_out*,char*) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
tui_table_body (struct ui_out *uiout)
{
  tui_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;

  tui_text (uiout, "\n");
}
