
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;


 int uo_field_skip (struct ui_out*,int,int,int,char const*) ;
 int verify_field (struct ui_out*,int*,int*,int*) ;

void
ui_out_field_skip (struct ui_out *uiout,
     const char *fldname)
{
  int fldno;
  int width;
  int align;

  verify_field (uiout, &fldno, &width, &align);

  uo_field_skip (uiout, fldno, width, align, fldname);
}
