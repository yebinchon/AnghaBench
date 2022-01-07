
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill_or_be_killed (int ) ;
 int target_create_inferior (char*,char*,char**) ;

__attribute__((used)) static void
maybe_kill_then_create_inferior (char *exec, char *args, char **env)
{
  kill_or_be_killed (0);
  target_create_inferior (exec, args, env);
}
