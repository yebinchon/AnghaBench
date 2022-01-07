
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_gen_win_info {scalar_t__ type; int * handle; scalar_t__ is_visible; } ;
typedef int WINDOW ;


 scalar_t__ CMD_WIN ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int tui_delete_win (int *) ;
 int tui_make_window (struct tui_gen_win_info*,int) ;
 int tui_win_is_auxillary (scalar_t__) ;

__attribute__((used)) static void
make_visible (struct tui_gen_win_info *win_info, int visible)
{

  if (win_info->type == CMD_WIN)
    return;

  if (visible)
    {
      if (!win_info->is_visible)
 {
   tui_make_window (win_info,
      (win_info->type != CMD_WIN
       && !tui_win_is_auxillary (win_info->type)));
   win_info->is_visible = TRUE;
 }
    }
  else if (!visible &&
    win_info->is_visible && win_info->handle != (WINDOW *) ((void*)0))
    {
      win_info->is_visible = FALSE;
      tui_delete_win (win_info->handle);
      win_info->handle = (WINDOW *) ((void*)0);
    }

  return;
}
