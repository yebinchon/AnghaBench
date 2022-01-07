
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out_level {int dummy; } ;
struct ui_out {int dummy; } ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;


 struct ui_out_level* current_level (struct ui_out*) ;
 int uo_field_int (struct ui_out*,int,int,int,char const*,int) ;
 int verify_field (struct ui_out*,int*,int*,int*) ;

void
ui_out_field_fmt_int (struct ui_out *uiout,
                      int input_width,
                      enum ui_align input_align,
        const char *fldname,
        int value)
{
  int fldno;
  int width;
  int align;
  struct ui_out_level *current = current_level (uiout);

  verify_field (uiout, &fldno, &width, &align);

  uo_field_int (uiout, fldno, input_width, input_align, fldname, value);
}
