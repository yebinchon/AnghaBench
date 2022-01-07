
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out_level {int dummy; } ;
struct ui_out {int dummy; } ;


 struct ui_out_level* current_level (struct ui_out*) ;
 int uo_field_int (struct ui_out*,int,int,int,char const*,int) ;
 int verify_field (struct ui_out*,int*,int*,int*) ;

void
ui_out_field_int (struct ui_out *uiout,
    const char *fldname,
    int value)
{
  int fldno;
  int width;
  int align;
  struct ui_out_level *current = current_level (uiout);

  verify_field (uiout, &fldno, &width, &align);

  uo_field_int (uiout, fldno, width, align, fldname, value);
}
