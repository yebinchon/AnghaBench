
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct frame_info {int dummy; } ;


 int DATA_WIN ;
 struct frame_info* deprecated_selected_frame ;
 struct symtab* find_pc_symtab (int ) ;
 int get_frame_pc (struct frame_info*) ;
 int select_source_symtab (struct symtab*) ;
 int tui_check_data_values (struct frame_info*) ;
 scalar_t__ tui_is_window_visible (int ) ;
 int tui_refreshing_registers ;
 int tui_show_frame_info (struct frame_info*) ;

__attribute__((used)) static void
tui_selected_frame_level_changed_hook (int level)
{
  struct frame_info *fi;

  fi = deprecated_selected_frame;


  if (fi)
    {
      struct symtab *s;

      s = find_pc_symtab (get_frame_pc (fi));




      if (s)
        select_source_symtab (s);


      tui_show_frame_info (fi);


      if (tui_is_window_visible (DATA_WIN))
        {
          tui_refreshing_registers = 1;
          tui_check_data_values (fi);
          tui_refreshing_registers = 0;
        }
    }
}
