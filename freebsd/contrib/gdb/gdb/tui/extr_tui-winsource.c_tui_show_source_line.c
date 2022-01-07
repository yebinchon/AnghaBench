
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int width; int handle; scalar_t__* content; } ;
struct tui_win_info {TYPE_3__ generic; } ;
struct TYPE_4__ {scalar_t__ is_exec_point; int line; } ;
struct TYPE_5__ {TYPE_1__ source; } ;
struct tui_win_element {TYPE_2__ which_element; } ;


 int A_STANDOUT ;
 int getyx (int ,int,int) ;
 int mvwaddstr (int ,int,int,int ) ;
 int waddch (int ,char) ;
 int wattroff (int ,int ) ;
 int wattron (int ,int ) ;

__attribute__((used)) static void
tui_show_source_line (struct tui_win_info * win_info, int lineno)
{
  struct tui_win_element * line;
  int x, y;

  line = (struct tui_win_element *) win_info->generic.content[lineno - 1];
  if (line->which_element.source.is_exec_point)
    wattron (win_info->generic.handle, A_STANDOUT);

  mvwaddstr (win_info->generic.handle, lineno, 1,
             line->which_element.source.line);
  if (line->which_element.source.is_exec_point)
    wattroff (win_info->generic.handle, A_STANDOUT);


  getyx (win_info->generic.handle, y, x);
  while (x + 1 < win_info->generic.width)
    {
      waddch (win_info->generic.handle, ' ');
      getyx (win_info->generic.handle, y, x);
    }
}
