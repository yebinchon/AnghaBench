
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_detach ) (char*,int) ;} ;


 int clear_solib () ;
 scalar_t__ fbsd_thread_active ;
 int fbsd_thread_deactivate () ;
 int fbsd_thread_ops ;
 TYPE_1__ orig_core_ops ;
 int stub1 (char*,int) ;
 int symbol_file_clear (int ) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
fbsd_core_detach (char *args, int from_tty)
{
  if (fbsd_thread_active)
    fbsd_thread_deactivate ();
  unpush_target (&fbsd_thread_ops);
  orig_core_ops.to_detach (args, from_tty);




  clear_solib();
  symbol_file_clear(0);
}
