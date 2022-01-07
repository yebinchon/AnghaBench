
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;


 int deprecated_selected_frame ;
 int select_source_symtab (struct symtab*) ;
 int tui_show_frame_info (int ) ;

__attribute__((used)) static void
tui_print_frame_info_listing_hook (struct symtab *s, int line,
                                   int stopline, int noerror)
{
  select_source_symtab (s);
  tui_show_frame_info (deprecated_selected_frame);
}
