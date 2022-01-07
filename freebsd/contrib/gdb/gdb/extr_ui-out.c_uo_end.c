
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {TYPE_1__* impl; } ;
typedef enum ui_out_type { ____Placeholder_ui_out_type } ui_out_type ;
struct TYPE_2__ {int (* end ) (struct ui_out*,int,int) ;} ;


 int stub1 (struct ui_out*,int,int) ;

void
uo_end (struct ui_out *uiout,
 enum ui_out_type type,
 int level)
{
  if (uiout->impl->end == ((void*)0))
    return;
  uiout->impl->end (uiout, type, level);
}
