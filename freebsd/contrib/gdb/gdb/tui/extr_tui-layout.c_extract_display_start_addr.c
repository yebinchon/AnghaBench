
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct symtab_and_line {int symtab; } ;
typedef enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;
struct TYPE_12__ {int addr; } ;
struct TYPE_13__ {TYPE_4__ start_line_or_addr; } ;
struct TYPE_14__ {TYPE_5__ source_info; } ;
struct TYPE_16__ {TYPE_6__ detail; } ;
struct TYPE_9__ {int line_no; } ;
struct TYPE_10__ {TYPE_1__ start_line_or_addr; } ;
struct TYPE_11__ {TYPE_2__ source_info; } ;
struct TYPE_15__ {TYPE_3__ detail; } ;
typedef int CORE_ADDR ;







 TYPE_8__* TUI_DISASM_WIN ;
 TYPE_7__* TUI_SRC_WIN ;
 int find_line_pc (int ,int ,int *) ;
 struct symtab_and_line get_current_source_symtab_and_line () ;
 int tui_current_layout () ;

__attribute__((used)) static CORE_ADDR
extract_display_start_addr (void)
{
  enum tui_layout_type cur_layout = tui_current_layout ();
  CORE_ADDR addr;
  CORE_ADDR pc;
  struct symtab_and_line cursal = get_current_source_symtab_and_line ();

  switch (cur_layout)
    {
    case 130:
    case 129:
      find_line_pc (cursal.symtab,
      TUI_SRC_WIN->detail.source_info.start_line_or_addr.line_no,
      &pc);
      addr = pc;
      break;
    case 132:
    case 128:
    case 131:
      addr = TUI_DISASM_WIN->detail.source_info.start_line_or_addr.addr;
      break;
    default:
      addr = 0;
      break;
    }

  return addr;
}
