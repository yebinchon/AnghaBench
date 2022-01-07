
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int DISASSEM_COMMAND ;
 int DISASSEM_WIN ;
 int tui_default_win_viewport_height (int ,int ) ;
 int tui_find_disassembly_address (int ,int) ;

CORE_ADDR
tui_get_low_disassembly_address (CORE_ADDR low, CORE_ADDR pc)
{
  int pos;



  pos = tui_default_win_viewport_height (DISASSEM_WIN, DISASSEM_COMMAND) / 2;
  pc = tui_find_disassembly_address (pc, -pos);

  if (pc < low)
    pc = low;
  return pc;
}
