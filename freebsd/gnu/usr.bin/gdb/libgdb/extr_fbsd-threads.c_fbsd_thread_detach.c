
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* to_detach ) (char*,int) ;} ;
struct TYPE_3__ {scalar_t__ pid; } ;


 TYPE_2__ child_ops ;
 int clear_solib () ;
 int fbsd_thread_deactivate () ;
 int fbsd_thread_ops ;
 TYPE_1__ proc_handle ;
 int stub1 (char*,int) ;
 int symbol_file_clear (int ) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
fbsd_thread_detach (char *args, int from_tty)
{
  fbsd_thread_deactivate ();
  unpush_target (&fbsd_thread_ops);





  clear_solib();
  symbol_file_clear(0);
  proc_handle.pid = 0;
  child_ops.to_detach (args, from_tty);
}
