
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
typedef enum ui_out_type { ____Placeholder_ui_out_type } ui_out_type ;


 int pop_level (struct ui_out*,int) ;
 int uo_end (struct ui_out*,int,int) ;

void
ui_out_end (struct ui_out *uiout,
     enum ui_out_type type)
{
  int old_level = pop_level (uiout, type);
  uo_end (uiout, type, old_level);
}
