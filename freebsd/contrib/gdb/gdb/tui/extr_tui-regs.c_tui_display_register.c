
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_gen_win_info {int width; int * handle; } ;
struct tui_data_element {scalar_t__ highlight; int content; } ;
typedef int WINDOW ;


 int tui_refresh_win (struct tui_gen_win_info*) ;
 int waddch (int *,char) ;
 int waddstr (int *,int ) ;
 int wmove (int *,int ,int ) ;
 int wstandend (int *) ;
 int wstandout (int *) ;

__attribute__((used)) static void
tui_display_register (struct tui_data_element *data,
                      struct tui_gen_win_info *win_info)
{
  if (win_info->handle != (WINDOW *) ((void*)0))
    {
      int i;

      if (data->highlight)
 wstandout (win_info->handle);

      wmove (win_info->handle, 0, 0);
      for (i = 1; i < win_info->width; i++)
        waddch (win_info->handle, ' ');
      wmove (win_info->handle, 0, 0);
      if (data->content)
        waddstr (win_info->handle, data->content);

      if (data->highlight)
 wstandend (win_info->handle);
      tui_refresh_win (win_info);
    }
}
