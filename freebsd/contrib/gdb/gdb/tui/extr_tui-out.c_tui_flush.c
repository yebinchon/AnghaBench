
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; } ;
typedef TYPE_1__ tui_out_data ;
struct ui_out {int dummy; } ;


 int gdb_flush (int ) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
tui_flush (struct ui_out *uiout)
{
  tui_out_data *data = ui_out_data (uiout);
  gdb_flush (data->stream);
}
