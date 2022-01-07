
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int child_set_env (char***,int *,char*,char*) ;
 int debug3 (char*,char*,char*) ;
 int free (char*) ;
 int match_pattern_list (char*,char const*,int ) ;
 char* strstr (char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
copy_environment_blacklist(char **source, char ***env, u_int *envsize,
    const char *blacklist)
{
 char *var_name, *var_val;
 int i;

 if (source == ((void*)0))
  return;

 for(i = 0; source[i] != ((void*)0); i++) {
  var_name = xstrdup(source[i]);
  if ((var_val = strstr(var_name, "=")) == ((void*)0)) {
   free(var_name);
   continue;
  }
  *var_val++ = '\0';

  if (blacklist == ((void*)0) ||
      match_pattern_list(var_name, blacklist, 0) != 1) {
   debug3("Copy environment: %s=%s", var_name, var_val);
   child_set_env(env, envsize, var_name, var_val);
  }

  free(var_name);
 }
}
