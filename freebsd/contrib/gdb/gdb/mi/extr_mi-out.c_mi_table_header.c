
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_3__ {scalar_t__ suppress_output; } ;
typedef TYPE_1__ mi_out_data ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;


 int mi_close (struct ui_out*,int ) ;
 int mi_field_int (struct ui_out*,int ,int ,int ,char*,int) ;
 int mi_field_string (struct ui_out*,int ,int,int,char*,char const*) ;
 int mi_open (struct ui_out*,int *,int ) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;
 int ui_out_type_tuple ;

void
mi_table_header (struct ui_out *uiout, int width, enum ui_align alignment,
   const char *col_name,
   const char *colhdr)
{
  mi_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;
  mi_open (uiout, ((void*)0), ui_out_type_tuple);
  mi_field_int (uiout, 0, 0, 0, "width", width);
  mi_field_int (uiout, 0, 0, 0, "alignment", alignment);
  mi_field_string (uiout, 0, 0, 0, "col_name", col_name);
  mi_field_string (uiout, 0, width, alignment, "colhdr", colhdr);
  mi_close (uiout, ui_out_type_tuple);
}
