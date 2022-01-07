
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CorruptEnvValueMsg ;
 int EFAULT ;
 int __clean_env (int) ;
 int __env_warnx (int ,char*,int ) ;
 int __setenv (char*,int,char*,int) ;
 scalar_t__ envActive ;
 char** environ ;
 int errno ;
 char** intEnviron ;
 char** origEnviron ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int
__merge_environ(void)
{
 char **env;
 char *equals;






 if (intEnviron != ((void*)0) && (environ != intEnviron || (envActive > 0 &&
     environ[0] == ((void*)0)))) {

  if (envActive > 0) {
   origEnviron = ((void*)0);
   __clean_env(0);
  }





  origEnviron = environ;
  if (origEnviron != ((void*)0))
   for (env = origEnviron; *env != ((void*)0); env++) {
    if ((equals = strchr(*env, '=')) == ((void*)0)) {
     __env_warnx(CorruptEnvValueMsg, *env,
         strlen(*env));
     errno = EFAULT;
     return (-1);
    }
    if (__setenv(*env, equals - *env, equals + 1,
        1) == -1)
     return (-1);
   }
 }

 return (0);
}
