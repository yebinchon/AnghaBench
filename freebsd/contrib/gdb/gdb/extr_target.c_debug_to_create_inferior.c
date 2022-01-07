
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_create_inferior ) (char*,char*,char**) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,char*,char*) ;
 int gdb_stdlog ;
 int stub1 (char*,char*,char**) ;

__attribute__((used)) static void
debug_to_create_inferior (char *exec_file, char *args, char **env)
{
  debug_target.to_create_inferior (exec_file, args, env);

  fprintf_unfiltered (gdb_stdlog, "target_create_inferior (%s, %s, xxx)\n",
        exec_file, args);
}
