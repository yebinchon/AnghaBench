
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 int error (char*,char const*) ;
 int fatal (char*) ;
 int free (char*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 void* xmalloc (int) ;
 char** xreallocarray (char**,size_t,int) ;

void
child_set_env(char ***envp, u_int *envsizep, const char *name,
 const char *value)
{
 char **env;
 u_int envsize;
 u_int i, namelen;

 if (strchr(name, '=') != ((void*)0)) {
  error("Invalid environment variable \"%.100s\"", name);
  return;
 }





 if (*envp == ((void*)0) && *envsizep == 0) {
  *envp = xmalloc(sizeof(char *));
  *envp[0] = ((void*)0);
  *envsizep = 1;
 }






 env = *envp;
 namelen = strlen(name);
 for (i = 0; env[i]; i++)
  if (strncmp(env[i], name, namelen) == 0 && env[i][namelen] == '=')
   break;
 if (env[i]) {

  free(env[i]);
 } else {

  envsize = *envsizep;
  if (i >= envsize - 1) {
   if (envsize >= 1000)
    fatal("child_set_env: too many env vars");
   envsize += 50;
   env = (*envp) = xreallocarray(env, envsize, sizeof(char *));
   *envsizep = envsize;
  }

  env[i + 1] = ((void*)0);
 }



 env[i] = xmalloc(strlen(name) + 1 + strlen(value) + 1);
 snprintf(env[i], strlen(name) + 1 + strlen(value) + 1, "%s=%s", name, value);
}
