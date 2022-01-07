
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int (* to_create_inferior ) (char*,char*,char**) ;} ;


 struct target_ops* find_default_run_target (char*) ;
 int stub1 (char*,char*,char**) ;

void
find_default_create_inferior (char *exec_file, char *allargs, char **env)
{
  struct target_ops *t;

  t = find_default_run_target ("run");
  (t->to_create_inferior) (exec_file, allargs, env);
  return;
}
