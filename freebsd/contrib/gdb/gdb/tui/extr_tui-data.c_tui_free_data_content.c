
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__** tui_win_content ;
struct tui_gen_win_info {int * handle; } ;
typedef int WINDOW ;
struct TYPE_5__ {struct tui_gen_win_info data_window; } ;
struct TYPE_6__ {TYPE_1__ which_element; } ;


 int DATA_WIN ;
 int free_content (TYPE_2__**,int,int ) ;
 int tui_delete_win (int *) ;
 int tui_free_win_content (struct tui_gen_win_info*) ;

void
tui_free_data_content (tui_win_content content, int content_size)
{
  int i;





  for (i = 0; i < content_size; i++)
    {
      struct tui_gen_win_info * generic_win = &content[i]->which_element.data_window;

      if (generic_win != (struct tui_gen_win_info *) ((void*)0))
 {
   tui_delete_win (generic_win->handle);
   generic_win->handle = (WINDOW *) ((void*)0);
   tui_free_win_content (generic_win);
 }
    }
  free_content (content,
        content_size,
        DATA_WIN);
}
