
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {TYPE_1__* impl; } ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;
struct TYPE_2__ {int (* field_int ) (struct ui_out*,int,int,int,char const*,int) ;} ;


 int stub1 (struct ui_out*,int,int,int,char const*,int) ;

void
uo_field_int (struct ui_out *uiout, int fldno, int width, enum ui_align align,
       const char *fldname,
       int value)
{
  if (!uiout->impl->field_int)
    return;
  uiout->impl->field_int (uiout, fldno, width, align, fldname, value);
}
