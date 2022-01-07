
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 struct frame_info* deprecated_selected_frame ;
 int tui_check_data_values (struct frame_info*) ;
 int tui_refreshing_registers ;

__attribute__((used)) static void
tui_register_changed_hook (int regno)
{
  struct frame_info *fi;

  fi = deprecated_selected_frame;
  if (fi && tui_refreshing_registers == 0)
    {
      tui_refreshing_registers = 1;
      tui_check_data_values (fi);
      tui_refreshing_registers = 0;
    }
}
