
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_3__ {int buffer; scalar_t__ suppress_field_separator; } ;
typedef TYPE_1__ mi_out_data ;


 int fputc_unfiltered (char,int ) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

__attribute__((used)) static void
field_separator (struct ui_out *uiout)
{
  mi_out_data *data = ui_out_data (uiout);
  if (data->suppress_field_separator)
    data->suppress_field_separator = 0;
  else
    fputc_unfiltered (',', data->buffer);
}
