
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* tui_win_content ;
struct TYPE_11__ {int regs_column_count; int display_regs; int regs_display_type; int regs_content_count; void* regs_content; int data_content_count; void* data_content; } ;
struct TYPE_10__ {int curch; int cur_line; } ;
struct TYPE_8__ {int addr; } ;
struct TYPE_9__ {int horizontal_offset; TYPE_2__ start_line_or_addr; } ;
struct TYPE_12__ {TYPE_5__ data_display_info; TYPE_4__ command_info; TYPE_3__ source_info; } ;
struct TYPE_7__ {int type; } ;
struct tui_win_info {TYPE_6__ detail; TYPE_1__ generic; } ;





 int FALSE ;

 int TUI_UNDEFINED_REGS ;

void
tui_clear_win_detail (struct tui_win_info * win_info)
{
  if (win_info != ((void*)0))
    {
      switch (win_info->generic.type)
 {
 case 128:
 case 129:
   win_info->detail.source_info.start_line_or_addr.addr = 0;
   win_info->detail.source_info.horizontal_offset = 0;
   break;
 case 131:
   win_info->detail.command_info.cur_line =
     win_info->detail.command_info.curch = 0;
   break;
 case 130:
   win_info->detail.data_display_info.data_content =
     (tui_win_content) ((void*)0);
   win_info->detail.data_display_info.data_content_count = 0;
   win_info->detail.data_display_info.regs_content =
     (tui_win_content) ((void*)0);
   win_info->detail.data_display_info.regs_content_count = 0;
   win_info->detail.data_display_info.regs_display_type =
     TUI_UNDEFINED_REGS;
   win_info->detail.data_display_info.regs_column_count = 1;
   win_info->detail.data_display_info.display_regs = FALSE;
   break;
 default:
   break;
 }
    }
}
