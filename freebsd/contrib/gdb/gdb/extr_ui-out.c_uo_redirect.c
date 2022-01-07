
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {TYPE_1__* impl; } ;
struct ui_file {int dummy; } ;
struct TYPE_2__ {int (* redirect ) (struct ui_out*,struct ui_file*) ;} ;


 int stub1 (struct ui_out*,struct ui_file*) ;

int
uo_redirect (struct ui_out *uiout, struct ui_file *outstream)
{
  if (!uiout->impl->redirect)
    return -1;
  uiout->impl->redirect (uiout, outstream);
  return 0;
}
