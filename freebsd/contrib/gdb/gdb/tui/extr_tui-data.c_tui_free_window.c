
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* tui_win_content ;
struct tui_gen_win_info {int type; struct tui_win_info* title; int * handle; int content_size; int * content; } ;
struct TYPE_5__ {int regs_column_count; int display_regs; int regs_display_type; int data_content_count; void* data_content; int regs_content_count; void* regs_content; } ;
struct TYPE_4__ {struct tui_gen_win_info* execution_info; struct tui_win_info* filename; } ;
struct TYPE_6__ {TYPE_2__ data_display_info; TYPE_1__ source_info; } ;
struct tui_win_info {struct tui_gen_win_info generic; TYPE_3__ detail; } ;
typedef int WINDOW ;




 int FALSE ;

 int TUI_UNDEFINED_REGS ;
 int tui_delete_win (int *) ;
 int tui_free_data_content (void*,int ) ;
 int tui_free_win_content (struct tui_gen_win_info*) ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 int xfree (struct tui_win_info*) ;

void
tui_free_window (struct tui_win_info * win_info)
{
  struct tui_gen_win_info * generic_win;

  switch (win_info->generic.type)
    {
    case 128:
    case 129:
      generic_win = tui_locator_win_info_ptr ();
      if (generic_win != (struct tui_gen_win_info *) ((void*)0))
 {
   tui_delete_win (generic_win->handle);
   generic_win->handle = (WINDOW *) ((void*)0);
 }
      tui_free_win_content (generic_win);
      if (win_info->detail.source_info.filename)
        {
          xfree (win_info->detail.source_info.filename);
          win_info->detail.source_info.filename = 0;
        }
      generic_win = win_info->detail.source_info.execution_info;
      if (generic_win != (struct tui_gen_win_info *) ((void*)0))
 {
   tui_delete_win (generic_win->handle);
   generic_win->handle = (WINDOW *) ((void*)0);
   tui_free_win_content (generic_win);
 }
      break;
    case 130:
      if (win_info->generic.content != ((void*)0))
 {
   tui_free_data_content (win_info->detail.data_display_info.regs_content,
     win_info->detail.data_display_info.regs_content_count);
   win_info->detail.data_display_info.regs_content =
     (tui_win_content) ((void*)0);
   win_info->detail.data_display_info.regs_content_count = 0;
   tui_free_data_content (win_info->detail.data_display_info.data_content,
     win_info->detail.data_display_info.data_content_count);
   win_info->detail.data_display_info.data_content =
     (tui_win_content) ((void*)0);
   win_info->detail.data_display_info.data_content_count = 0;
   win_info->detail.data_display_info.regs_display_type =
     TUI_UNDEFINED_REGS;
   win_info->detail.data_display_info.regs_column_count = 1;
   win_info->detail.data_display_info.display_regs = FALSE;
   win_info->generic.content = ((void*)0);
   win_info->generic.content_size = 0;
 }
      break;
    default:
      break;
    }
  if (win_info->generic.handle != (WINDOW *) ((void*)0))
    {
      tui_delete_win (win_info->generic.handle);
      win_info->generic.handle = (WINDOW *) ((void*)0);
      tui_free_win_content (&win_info->generic);
    }
  if (win_info->generic.title)
    xfree (win_info->generic.title);
  xfree (win_info);
}
