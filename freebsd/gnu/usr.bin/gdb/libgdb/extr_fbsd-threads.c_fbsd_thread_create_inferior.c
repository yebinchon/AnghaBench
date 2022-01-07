
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_create_inferior ) (char*,char*,char**) ;} ;


 TYPE_1__ child_ops ;
 int fbsd_thread_active ;
 int fbsd_thread_ops ;
 scalar_t__ fbsd_thread_present ;
 int push_target (int *) ;
 int stub1 (char*,char*,char**) ;

__attribute__((used)) static void
fbsd_thread_create_inferior (char *exec_file, char *allargs, char **env)
{
  if (fbsd_thread_present && !fbsd_thread_active)
    push_target(&fbsd_thread_ops);

  child_ops.to_create_inferior (exec_file, allargs, env);
}
