
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct ui_out {int dummy; } ;
struct TYPE_3__ {int buffer; scalar_t__ suppress_output; } ;
typedef TYPE_1__ mi_out_data ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;


 int field_separator (struct ui_out*) ;
 int fprintf_unfiltered (int ,char*,char const*) ;
 int fputs_unfiltered (char*,int ) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;
 int vfprintf_unfiltered (int ,char const*,int ) ;

void
mi_field_fmt (struct ui_out *uiout, int fldno,
       int width, enum ui_align align,
       const char *fldname,
       const char *format,
       va_list args)
{
  mi_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;
  field_separator (uiout);
  if (fldname)
    fprintf_unfiltered (data->buffer, "%s=\"", fldname);
  else
    fputs_unfiltered ("\"", data->buffer);
  vfprintf_unfiltered (data->buffer, format, args);
  fputs_unfiltered ("\"", data->buffer);
}
