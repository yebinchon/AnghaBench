
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {TYPE_1__* impl; } ;
struct TYPE_2__ {int (* text ) (struct ui_out*,char const*) ;} ;


 int stub1 (struct ui_out*,char const*) ;

void
uo_text (struct ui_out *uiout,
  const char *string)
{
  if (!uiout->impl->text)
    return;
  uiout->impl->text (uiout, string);
}
