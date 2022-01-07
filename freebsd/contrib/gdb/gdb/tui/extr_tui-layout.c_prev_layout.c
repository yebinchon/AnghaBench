
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;


 int DISASSEM_DATA_COMMAND ;
 int SRC_COMMAND ;
 int UNDEFINED_LAYOUT ;
 int tui_current_layout () ;

__attribute__((used)) static enum tui_layout_type
prev_layout (void)
{
  enum tui_layout_type new_layout;

  new_layout = tui_current_layout ();
  if (new_layout == SRC_COMMAND)
    new_layout = DISASSEM_DATA_COMMAND;
  else
    {
      new_layout--;
      if (new_layout == UNDEFINED_LAYOUT)
 new_layout = DISASSEM_DATA_COMMAND;
    }

  return new_layout;
}
