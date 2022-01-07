
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {TYPE_1__* impl; } ;
struct TYPE_2__ {int is_mi_like_p; } ;



int
ui_out_is_mi_like_p (struct ui_out *uiout)
{
  return uiout->impl->is_mi_like_p;
}
