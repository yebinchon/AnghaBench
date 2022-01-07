
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int type; void* is_visible; int * handle; int * content; } ;
struct TYPE_6__ {int data_content_count; int data_content; int regs_content_count; int regs_content; } ;
struct TYPE_5__ {struct tui_gen_win_info* execution_info; int filename; } ;
struct TYPE_7__ {TYPE_2__ data_display_info; TYPE_1__ source_info; } ;
struct tui_win_info {TYPE_4__ generic; TYPE_3__ detail; } ;
struct tui_gen_win_info {void* is_visible; int * handle; } ;
typedef int WINDOW ;




 void* FALSE ;

 int tui_del_data_windows (int ,int ) ;
 int tui_delete_win (int *) ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 int xfree (int ) ;

void
tui_del_window (struct tui_win_info * win_info)
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
   generic_win->is_visible = FALSE;
 }
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
   generic_win->is_visible = FALSE;
 }
      break;
    case 130:
      if (win_info->generic.content != ((void*)0))
 {
   tui_del_data_windows (win_info->detail.data_display_info.regs_content,
    win_info->detail.data_display_info.regs_content_count);
   tui_del_data_windows (win_info->detail.data_display_info.data_content,
    win_info->detail.data_display_info.data_content_count);
 }
      break;
    default:
      break;
    }
  if (win_info->generic.handle != (WINDOW *) ((void*)0))
    {
      tui_delete_win (win_info->generic.handle);
      win_info->generic.handle = (WINDOW *) ((void*)0);
      win_info->generic.is_visible = FALSE;
    }
}
