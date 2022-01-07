
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tui_win_content ;
struct tui_gen_win_info {scalar_t__ content_size; int * content; int type; } ;


 int free_content (int ,scalar_t__,int ) ;

void
tui_free_win_content (struct tui_gen_win_info * win_info)
{
  if (win_info->content != ((void*)0))
    {
      free_content ((tui_win_content) win_info->content,
     win_info->content_size,
     win_info->type);
      win_info->content = ((void*)0);
    }
  win_info->content_size = 0;
}
