
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; scalar_t__ is_visible; } ;
struct tui_win_info {TYPE_1__ generic; } ;
typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;


 int MAX_MAJOR_WINDOWS ;
 int SRC_WIN ;
 int printf_filtered (char*,int ,int ) ;
 struct tui_win_info** tui_win_list ;
 int tui_win_name (TYPE_1__*) ;
 struct tui_win_info* tui_win_with_focus () ;

__attribute__((used)) static void
tui_all_windows_info (char *arg, int from_tty)
{
  enum tui_win_type type;
  struct tui_win_info * win_with_focus = tui_win_with_focus ();

  for (type = SRC_WIN; (type < MAX_MAJOR_WINDOWS); type++)
    if (tui_win_list[type] && tui_win_list[type]->generic.is_visible)
      {
 if (win_with_focus == tui_win_list[type])
   printf_filtered ("        %s\t(%d lines)  <has focus>\n",
      tui_win_name (&tui_win_list[type]->generic),
      tui_win_list[type]->generic.height);
 else
   printf_filtered ("        %s\t(%d lines)\n",
      tui_win_name (&tui_win_list[type]->generic),
      tui_win_list[type]->generic.height);
      }
}
