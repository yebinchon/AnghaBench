
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
typedef int mi_out_data ;


 int mi_field_int (struct ui_out*,int,int,int,char*,int) ;
 int mi_open (struct ui_out*,char const*,int ) ;
 int * ui_out_data (struct ui_out*) ;
 int ui_out_type_list ;
 int ui_out_type_tuple ;

void
mi_table_begin (struct ui_out *uiout,
  int nr_cols,
  int nr_rows,
  const char *tblid)
{
  mi_out_data *data = ui_out_data (uiout);
  mi_open (uiout, tblid, ui_out_type_tuple);
  mi_field_int (uiout, -1 , -1 , -1 ,
  "nr_rows", nr_rows);
  mi_field_int (uiout, -1 , -1 , -1 ,
  "nr_cols", nr_cols);
  mi_open (uiout, "hdr", ui_out_type_list);
}
