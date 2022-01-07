
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct TYPE_2__ {int * obfd; } ;


 int DYNAMIC ;
 int NO_STOP_QUIETLY ;
 int STOP_QUIETLY ;
 scalar_t__ TARGET_SIGNAL_0 ;
 scalar_t__ TARGET_SIGNAL_TRAP ;
 int auto_solib_add ;
 int bfd_get_file_flags (int *) ;
 int clear_proceed_status () ;
 int minus_one_ptid ;
 int re_enable_breakpoints_in_shlibs () ;
 int solib_add (char*,int ,struct target_ops*,int ) ;
 scalar_t__ stop_signal ;
 int stop_soon ;
 TYPE_1__* symfile_objfile ;
 int target_resume (int ,int ,scalar_t__) ;
 int wait_for_inferior () ;

__attribute__((used)) static void
osf_solib_create_inferior_hook (void)
{


  if (symfile_objfile == ((void*)0)
      || symfile_objfile->obfd == ((void*)0)
      || ((bfd_get_file_flags (symfile_objfile->obfd) & DYNAMIC) == 0))
    return;






  clear_proceed_status ();
  stop_soon = STOP_QUIETLY;
  stop_signal = TARGET_SIGNAL_0;
  do
    {
      target_resume (minus_one_ptid, 0, stop_signal);
      wait_for_inferior ();
    }
  while (stop_signal != TARGET_SIGNAL_TRAP);







  solib_add ((char *) 0, 0, (struct target_ops *) 0, auto_solib_add);
  stop_soon = NO_STOP_QUIETLY;


  re_enable_breakpoints_in_shlibs ();
}
