
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
struct TYPE_10__ {int curch; int cur_line; } ;
struct TYPE_9__ {int regs_column_count; int current_group; void* display_regs; int regs_display_type; int regs_content_count; void* regs_content; int data_content_count; void* data_content; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {int filename; TYPE_1__ start_line_or_addr; int horizontal_offset; void* has_locator; struct tui_gen_win_info* execution_info; } ;
struct TYPE_11__ {int * opaque; TYPE_4__ command_info; TYPE_3__ data_display_info; TYPE_2__ source_info; } ;
struct TYPE_12__ {int type; } ;
struct tui_win_info {TYPE_5__ detail; TYPE_6__ generic; void* is_highlighted; void* can_highlight; } ;
struct tui_gen_win_info {int dummy; } ;





 void* FALSE ;

 int TUI_UNDEFINED_REGS ;
 int tui_init_generic_part (TYPE_6__*) ;

void
init_win_info (struct tui_win_info * win_info)
{
  tui_init_generic_part (&win_info->generic);
  win_info->can_highlight =
    win_info->is_highlighted = FALSE;
  switch (win_info->generic.type)
    {
    case 128:
    case 129:
      win_info->detail.source_info.execution_info = (struct tui_gen_win_info *) ((void*)0);
      win_info->detail.source_info.has_locator = FALSE;
      win_info->detail.source_info.horizontal_offset = 0;
      win_info->detail.source_info.start_line_or_addr.addr = 0;
      win_info->detail.source_info.filename = 0;
      break;
    case 130:
      win_info->detail.data_display_info.data_content = (tui_win_content) ((void*)0);
      win_info->detail.data_display_info.data_content_count = 0;
      win_info->detail.data_display_info.regs_content = (tui_win_content) ((void*)0);
      win_info->detail.data_display_info.regs_content_count = 0;
      win_info->detail.data_display_info.regs_display_type =
 TUI_UNDEFINED_REGS;
      win_info->detail.data_display_info.regs_column_count = 1;
      win_info->detail.data_display_info.display_regs = FALSE;
      win_info->detail.data_display_info.current_group = 0;
      break;
    case 131:
      win_info->detail.command_info.cur_line = 0;
      win_info->detail.command_info.curch = 0;
      break;
    default:
      win_info->detail.opaque = ((void*)0);
      break;
    }
}
