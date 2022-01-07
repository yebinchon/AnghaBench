
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_element {int dummy; } ;
struct tui_gen_win_info {void** content; int content_size; int type; } ;


 int init_content_element (struct tui_win_element*,int ) ;
 scalar_t__ tui_alloc_content (int,int ) ;
 scalar_t__ xmalloc (int) ;

int
tui_add_content_elements (struct tui_gen_win_info * win_info, int num_elements)
{
  struct tui_win_element * element_ptr;
  int i, index_start;

  if (win_info->content == ((void*)0))
    {
      win_info->content = (void **) tui_alloc_content (num_elements, win_info->type);
      index_start = 0;
    }
  else
    index_start = win_info->content_size;
  if (win_info->content != ((void*)0))
    {
      for (i = index_start; (i < num_elements + index_start); i++)
 {
   if ((element_ptr = (struct tui_win_element *)
        xmalloc (sizeof (struct tui_win_element))) != (struct tui_win_element *) ((void*)0))
     {
       win_info->content[i] = (void *) element_ptr;
       init_content_element (element_ptr, win_info->type);
       win_info->content_size++;
     }
   else
     return (-1);
 }
    }

  return index_start;
}
