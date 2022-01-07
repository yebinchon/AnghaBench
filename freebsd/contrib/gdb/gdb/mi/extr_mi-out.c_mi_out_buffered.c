
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ mi_out_data ;


 int fprintf_unfiltered (int ,char*,char*) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
mi_out_buffered (struct ui_out *uiout, char *string)
{
  mi_out_data *data = ui_out_data (uiout);
  fprintf_unfiltered (data->buffer, "%s", string);
}
