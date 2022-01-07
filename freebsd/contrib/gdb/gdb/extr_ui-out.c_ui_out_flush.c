
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;


 int uo_flush (struct ui_out*) ;

void
ui_out_flush (struct ui_out *uiout)
{
  uo_flush (uiout);
}
