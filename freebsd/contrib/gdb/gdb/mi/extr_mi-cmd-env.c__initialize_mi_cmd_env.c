
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_in_environ (int ,int ) ;
 int inferior_environ ;
 int orig_path ;
 int path_var_name ;
 int xstrdup (char*) ;

void
_initialize_mi_cmd_env (void)
{
  char *env;


  env = get_in_environ (inferior_environ, path_var_name);


  if (!env)
    env = "";
  orig_path = xstrdup (env);
}
