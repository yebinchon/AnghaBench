
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;


 int uo_text (struct ui_out*,char const*) ;

void
ui_out_text (struct ui_out *uiout,
      const char *string)
{
  uo_text (uiout, string);
}
