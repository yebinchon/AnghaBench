
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct TYPE_2__ {int (* to_attach ) (char*,int) ;} ;


 int SOLIB_ADD (char*,int,struct target_ops*,int ) ;
 int auto_solib_add ;
 TYPE_1__ child_ops ;
 int fbsd_thread_active ;
 scalar_t__ fbsd_thread_core ;
 int fbsd_thread_ops ;
 scalar_t__ fbsd_thread_present ;
 int push_target (int *) ;
 int stub1 (char*,int) ;

__attribute__((used)) static void
fbsd_thread_attach (char *args, int from_tty)
{
  fbsd_thread_core = 0;

  child_ops.to_attach (args, from_tty);


  SOLIB_ADD ((char *) 0, from_tty, (struct target_ops *) 0, auto_solib_add);

  if (fbsd_thread_present && !fbsd_thread_active)
    push_target(&fbsd_thread_ops);
}
