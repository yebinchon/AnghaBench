
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_create_inferior ) (char*,char*,char**) ;} ;


 int keep_thread_db ;
 int stub1 (char*,char*,char**) ;
 TYPE_1__* target_beneath ;
 int thread_db_ops ;
 int unpush_target (int *) ;
 scalar_t__ using_thread_db ;

__attribute__((used)) static void
thread_db_create_inferior (char *exec_file, char *allargs, char **env)
{
  if (!keep_thread_db)
    {
      unpush_target (&thread_db_ops);
      using_thread_db = 0;
    }

  target_beneath->to_create_inferior (exec_file, allargs, env);
}
