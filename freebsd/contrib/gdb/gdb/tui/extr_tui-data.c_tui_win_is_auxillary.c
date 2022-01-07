
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;


 int MAX_MAJOR_WINDOWS ;

int
tui_win_is_auxillary (enum tui_win_type win_type)
{
  return (win_type > MAX_MAJOR_WINDOWS);
}
