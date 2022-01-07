
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int * handle; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;


 int COLS ;
 int FALSE ;
 int LINES ;
 int SRC_COMMAND ;
 int TRUE ;
 TYPE_2__* TUI_CMD_WIN ;
 int TUI_SRC_WIN ;
 int TUI_UNDEFINED_REGS ;
 int cbreak () ;
 int clearok (int ,int ) ;
 int def_prog_mode () ;
 int def_shell_mode () ;
 scalar_t__ deprecated_selected_frame ;
 int * initscr () ;
 int keypad (int *,int ) ;
 int nl () ;
 int nodelay (int *,int ) ;
 int noecho () ;
 int rl_initialize () ;
 int rl_startup_hook ;
 int stdscr ;
 int target_terminal_save_ours () ;
 int tui_active ;
 int tui_current_key_mode ;
 scalar_t__ tui_finish_init ;
 int tui_install_hooks () ;
 int tui_refresh_all_win () ;
 int tui_rl_startup_hook ;
 int tui_set_key_mode (int ) ;
 int tui_set_layout (int ,int ) ;
 int tui_set_term_height_to (int ) ;
 int tui_set_term_width_to (int ) ;
 int tui_set_win_focus_to (int ) ;
 int tui_setup_io (int) ;
 int tui_show_frame_info (scalar_t__) ;
 int tui_update_gdb_sizes () ;
 int tui_update_variables () ;
 int wrefresh (int *) ;

void
tui_enable (void)
{
  if (tui_active)
    return;




  if (tui_finish_init)
    {
      WINDOW *w;

      w = initscr ();

      cbreak ();
      noecho ();

      nodelay(w, FALSE);
      nl();
      keypad (w, TRUE);
      rl_initialize ();
      tui_set_term_height_to (LINES);
      tui_set_term_width_to (COLS);
      def_prog_mode ();

      tui_show_frame_info (0);
      tui_set_layout (SRC_COMMAND, TUI_UNDEFINED_REGS);
      tui_set_win_focus_to (TUI_SRC_WIN);
      keypad (TUI_CMD_WIN->generic.handle, TRUE);
      wrefresh (TUI_CMD_WIN->generic.handle);
      tui_finish_init = 0;
    }
  else
    {


     def_shell_mode ();
     clearok (stdscr, TRUE);
   }


  tui_install_hooks ();
  rl_startup_hook = tui_rl_startup_hook;

  tui_update_variables ();

  tui_setup_io (1);

  tui_active = 1;
  if (deprecated_selected_frame)
     tui_show_frame_info (deprecated_selected_frame);


  tui_set_key_mode (tui_current_key_mode);
  tui_refresh_all_win ();


  target_terminal_save_ours ();
  tui_update_gdb_sizes ();
}
