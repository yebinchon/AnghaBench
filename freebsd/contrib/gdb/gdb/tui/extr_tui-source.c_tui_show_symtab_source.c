
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union tui_line_or_address {int dummy; } tui_line_or_address ;
struct symtab {int dummy; } ;
struct TYPE_5__ {scalar_t__ horizontal_offset; } ;
struct TYPE_6__ {TYPE_1__ source_info; } ;
struct TYPE_7__ {TYPE_2__ detail; } ;


 TYPE_3__* TUI_SRC_WIN ;
 int tui_update_source_window_as_is (TYPE_3__*,struct symtab*,union tui_line_or_address,int) ;

void
tui_show_symtab_source (struct symtab *s, union tui_line_or_address line, int noerror)
{
  TUI_SRC_WIN->detail.source_info.horizontal_offset = 0;
  tui_update_source_window_as_is (TUI_SRC_WIN, s, line, noerror);
}
