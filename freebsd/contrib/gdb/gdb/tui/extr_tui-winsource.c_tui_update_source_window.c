
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union tui_line_or_address {int dummy; } tui_line_or_address ;
struct TYPE_3__ {scalar_t__ horizontal_offset; } ;
struct TYPE_4__ {TYPE_1__ source_info; } ;
struct tui_win_info {TYPE_2__ detail; } ;
struct symtab {int dummy; } ;


 int tui_update_source_window_as_is (struct tui_win_info*,struct symtab*,union tui_line_or_address,int) ;

void
tui_update_source_window (struct tui_win_info * win_info, struct symtab *s,
     union tui_line_or_address line_or_addr, int noerror)
{
  win_info->detail.source_info.horizontal_offset = 0;
  tui_update_source_window_as_is (win_info, s, line_or_addr, noerror);

  return;
}
