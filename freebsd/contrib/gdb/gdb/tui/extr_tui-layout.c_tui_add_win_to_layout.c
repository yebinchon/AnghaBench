
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;
typedef enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;



 int DISASSEM_COMMAND ;
 int DISASSEM_DATA_COMMAND ;

 int SRC_COMMAND ;
 int SRC_DATA_COMMAND ;
 int SRC_DISASSEM_COMMAND ;

 int show_layout (int) ;
 int tui_clear_source_windows_detail () ;
 int tui_current_layout () ;

void
tui_add_win_to_layout (enum tui_win_type type)
{
  enum tui_layout_type cur_layout = tui_current_layout ();

  switch (type)
    {
    case 128:
      if (cur_layout != SRC_COMMAND &&
   cur_layout != SRC_DISASSEM_COMMAND &&
   cur_layout != SRC_DATA_COMMAND)
 {
   tui_clear_source_windows_detail ();
   if (cur_layout == DISASSEM_DATA_COMMAND)
     show_layout (SRC_DATA_COMMAND);
   else
     show_layout (SRC_COMMAND);
 }
      break;
    case 129:
      if (cur_layout != DISASSEM_COMMAND &&
   cur_layout != SRC_DISASSEM_COMMAND &&
   cur_layout != DISASSEM_DATA_COMMAND)
 {
   tui_clear_source_windows_detail ();
   if (cur_layout == SRC_DATA_COMMAND)
     show_layout (DISASSEM_DATA_COMMAND);
   else
     show_layout (DISASSEM_COMMAND);
 }
      break;
    case 130:
      if (cur_layout != SRC_DATA_COMMAND &&
   cur_layout != DISASSEM_DATA_COMMAND)
 {
   if (cur_layout == DISASSEM_COMMAND)
     show_layout (DISASSEM_DATA_COMMAND);
   else
     show_layout (SRC_DATA_COMMAND);
 }
      break;
    default:
      break;
    }
}
