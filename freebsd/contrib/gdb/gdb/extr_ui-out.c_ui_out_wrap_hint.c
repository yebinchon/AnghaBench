
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;


 int uo_wrap_hint (struct ui_out*,char*) ;

void
ui_out_wrap_hint (struct ui_out *uiout, char *identstring)
{
  uo_wrap_hint (uiout, identstring);
}
