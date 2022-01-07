
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int dummy; } ;


 int DISASSEM_WIN ;
 int make_source_or_disasm_window (struct tui_win_info**,int ,int,int) ;

__attribute__((used)) static void
make_disasm_window (struct tui_win_info * * win_info_ptr, int height, int origin_y)
{
  make_source_or_disasm_window (win_info_ptr, DISASSEM_WIN, height, origin_y);

  return;
}
