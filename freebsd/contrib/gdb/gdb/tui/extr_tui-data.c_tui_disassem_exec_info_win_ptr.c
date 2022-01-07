
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_gen_win_info {int dummy; } ;


 struct tui_gen_win_info* exec_info ;

struct tui_gen_win_info *
tui_disassem_exec_info_win_ptr (void)
{
  return &exec_info[1];
}
