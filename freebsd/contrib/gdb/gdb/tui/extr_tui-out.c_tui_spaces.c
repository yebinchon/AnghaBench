
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; scalar_t__ suppress_output; } ;
typedef TYPE_1__ tui_out_data ;
struct ui_out {int dummy; } ;


 int print_spaces_filtered (int,int ) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
tui_spaces (struct ui_out *uiout, int numspaces)
{
  tui_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;
  print_spaces_filtered (numspaces, data->stream);
}
