
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;


 int DISASSEM_WIN ;
 int SRC_WIN ;

int
tui_win_is_source_type (enum tui_win_type win_type)
{
  return (win_type == SRC_WIN || win_type == DISASSEM_WIN);
}
