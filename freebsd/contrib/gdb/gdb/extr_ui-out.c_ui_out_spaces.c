
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;


 int uo_spaces (struct ui_out*,int) ;

void
ui_out_spaces (struct ui_out *uiout, int numspaces)
{
  uo_spaces (uiout, numspaces);
}
