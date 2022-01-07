
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int height; } ;
struct tui_win_info {TYPE_2__ generic; } ;
typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;
typedef enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;
struct TYPE_4__ {int height; } ;
struct TYPE_6__ {TYPE_1__ generic; } ;







 TYPE_3__* TUI_CMD_WIN ;
 int tui_term_height () ;
 struct tui_win_info** tui_win_list ;

int
tui_default_win_height (enum tui_win_type type, enum tui_layout_type layout)
{
  int h;

  if (tui_win_list[type] != (struct tui_win_info *) ((void*)0))
    h = tui_win_list[type]->generic.height;
  else
    {
      switch (layout)
 {
 case 130:
 case 132:
   if (TUI_CMD_WIN == ((void*)0))
     h = tui_term_height () / 2;
   else
     h = tui_term_height () - TUI_CMD_WIN->generic.height;
   break;
 case 128:
 case 129:
 case 131:
   if (TUI_CMD_WIN == ((void*)0))
     h = tui_term_height () / 3;
   else
     h = (tui_term_height () - TUI_CMD_WIN->generic.height) / 2;
   break;
 default:
   h = 0;
   break;
 }
    }

  return h;
}
