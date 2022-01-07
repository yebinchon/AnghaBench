
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; scalar_t__ type; int height; int * handle; } ;
struct tui_win_info {TYPE_1__ generic; } ;
typedef int WINDOW ;


 int EMPTY_SOURCE_PROMPT ;
 char* NO_DISASSEM_STRING ;
 char* NO_SRC_STRING ;
 scalar_t__ SRC_WIN ;
 int mvwaddstr (int *,int,int,char*) ;
 int strlen (char*) ;
 int tui_check_and_display_highlight_if_needed (struct tui_win_info*) ;
 int tui_refresh_win (TYPE_1__*) ;
 int tui_set_source_content_nil (struct tui_win_info*,char*) ;
 int werase (int *) ;

void
tui_erase_source_content (struct tui_win_info * win_info, int display_prompt)
{
  int x_pos;
  int half_width = (win_info->generic.width - 2) / 2;

  if (win_info->generic.handle != (WINDOW *) ((void*)0))
    {
      werase (win_info->generic.handle);
      tui_check_and_display_highlight_if_needed (win_info);
      if (display_prompt == EMPTY_SOURCE_PROMPT)
 {
   char *no_src_str;

   if (win_info->generic.type == SRC_WIN)
     no_src_str = NO_SRC_STRING;
   else
     no_src_str = NO_DISASSEM_STRING;
   if (strlen (no_src_str) >= half_width)
     x_pos = 1;
   else
     x_pos = half_width - strlen (no_src_str);
   mvwaddstr (win_info->generic.handle,
       (win_info->generic.height / 2),
       x_pos,
       no_src_str);






   tui_set_source_content_nil (win_info, no_src_str);
 }
      tui_refresh_win (&win_info->generic);
    }
}
