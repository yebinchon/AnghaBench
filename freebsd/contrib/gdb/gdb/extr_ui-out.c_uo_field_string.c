
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {TYPE_1__* impl; } ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;
struct TYPE_2__ {int (* field_string ) (struct ui_out*,int,int,int,char const*,char const*) ;} ;


 int stub1 (struct ui_out*,int,int,int,char const*,char const*) ;

void
uo_field_string (struct ui_out *uiout, int fldno, int width,
   enum ui_align align,
   const char *fldname,
   const char *string)
{
  if (!uiout->impl->field_string)
    return;
  uiout->impl->field_string (uiout, fldno, width, align, fldname, string);
}
