
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tui_win_content ;
typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;


 int free_content_elements (scalar_t__,int,int) ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
free_content (tui_win_content content, int content_size, enum tui_win_type win_type)
{
  if (content != (tui_win_content) ((void*)0))
    {
      free_content_elements (content, content_size, win_type);
      xfree (content);
    }
}
