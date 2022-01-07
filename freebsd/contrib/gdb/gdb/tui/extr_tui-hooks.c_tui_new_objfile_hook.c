
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 scalar_t__ tui_active ;
 int tui_display_main () ;
 int tui_target_new_objfile_chain (struct objfile*) ;

__attribute__((used)) static void
tui_new_objfile_hook (struct objfile* objfile)
{
  if (tui_active)
    tui_display_main ();

  if (tui_target_new_objfile_chain)
    tui_target_new_objfile_chain (objfile);
}
