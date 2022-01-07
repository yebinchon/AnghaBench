
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_create_inferior ) (char*,char*,char**) ;} ;


 int deactivate_uw_thread () ;
 int find_main () ;
 TYPE_1__ procfs_ops ;
 int stub1 (char*,char*,char**) ;
 int thr_infpid (int *) ;
 scalar_t__ uw_thread_active ;

__attribute__((used)) static void
uw_thread_create_inferior (char *exec_file, char *allargs, char **env)
{
  if (uw_thread_active)
    deactivate_uw_thread ();

  procfs_ops.to_create_inferior (exec_file, allargs, env);
  if (uw_thread_active)
    {
      find_main ();
      thr_infpid (((void*)0));
    }
}
