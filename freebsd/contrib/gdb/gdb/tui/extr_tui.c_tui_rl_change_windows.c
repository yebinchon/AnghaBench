
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tui_register_display_type { ____Placeholder_tui_register_display_type } tui_register_display_type ;
typedef enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;







 int TUI_UNDEFINED_REGS ;
 scalar_t__ tui_active ;
 int tui_current_layout () ;
 int tui_rl_switch_mode (int ,int ) ;
 int tui_set_layout (int,int) ;

__attribute__((used)) static int
tui_rl_change_windows (int notused1, int notused2)
{
  if (!tui_active)
    tui_rl_switch_mode (0 , 0 );

  if (tui_active)
    {
      enum tui_layout_type new_layout;
      enum tui_register_display_type regs_type = TUI_UNDEFINED_REGS;

      new_layout = tui_current_layout ();



      switch (new_layout)
 {
 case 130:
   new_layout = 128;
   break;

 case 132:
   new_layout = 128;
   break;

 case 129:
   new_layout = 128;
   break;

 case 128:
   new_layout = 131;
   break;

 case 131:
   new_layout = 129;
   break;

 default:
   new_layout = 130;
   break;
 }
      tui_set_layout (new_layout, regs_type);
    }
  return 0;
}
