
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_3__ {scalar_t__ suppress_output; } ;
typedef TYPE_1__ mi_out_data ;


 int mi_close (struct ui_out*,int ) ;
 int mi_open (struct ui_out*,char*,int ) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;
 int ui_out_type_list ;

void
mi_table_body (struct ui_out *uiout)
{
  mi_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;

  mi_close (uiout, ui_out_type_list);
  mi_open (uiout, "body", ui_out_type_list);
}
