
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct ui_file {int dummy; } ;
struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ mi_out_data ;


 int do_write ;
 int ui_file_put (int ,int ,struct ui_file*) ;
 int ui_file_rewind (int ) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
mi_out_put (struct ui_out *uiout,
     struct ui_file *stream)
{
  mi_out_data *data = ui_out_data (uiout);
  ui_file_put (data->buffer, do_write, stream);
  ui_file_rewind (data->buffer);
}
