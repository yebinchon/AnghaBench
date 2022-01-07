
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int putenv; size_t valueSize; size_t nameLen; int active; int * name; int * value; } ;


 int CorruptEnvFindMsg ;
 int CorruptEnvValueMsg ;
 int EFAULT ;
 int __clean_env (int) ;
 int __env_warnx (int ,int *,size_t) ;
 int * __findenv (int *,size_t,int*,int) ;
 scalar_t__ __rebuild_environ (int) ;
 TYPE_1__* calloc (int,int) ;
 TYPE_1__* envVars ;
 int envVarsSize ;
 int envVarsTotal ;
 char** environ ;
 int errno ;
 char** origEnviron ;
 int * strchr (int *,char) ;
 int * strdup (char*) ;
 size_t strlen (int *) ;

__attribute__((used)) static int
__build_env(void)
{
 char **env;
 int activeNdx;
 int envNdx;
 int savedErrno;
 size_t nameLen;


 if (environ == ((void*)0) || environ[0] == ((void*)0))
  return (0);


 for (env = environ, envVarsTotal = 0; *env != ((void*)0); env++)
  envVarsTotal++;
 envVarsSize = envVarsTotal * 2;


 envVars = calloc(envVarsSize, sizeof(*envVars));
 if (envVars == ((void*)0))
  goto Failure;


 for (envNdx = envVarsTotal - 1; envNdx >= 0; envNdx--) {
  envVars[envNdx].putenv = 0;
  envVars[envNdx].name =
      strdup(environ[envVarsTotal - envNdx - 1]);
  if (envVars[envNdx].name == ((void*)0))
   goto Failure;
  envVars[envNdx].value = strchr(envVars[envNdx].name, '=');
  if (envVars[envNdx].value != ((void*)0)) {
   envVars[envNdx].value++;
   envVars[envNdx].valueSize =
       strlen(envVars[envNdx].value);
  } else {
   __env_warnx(CorruptEnvValueMsg, envVars[envNdx].name,
       strlen(envVars[envNdx].name));
   errno = EFAULT;
   goto Failure;
  }






  nameLen = envVars[envNdx].value - envVars[envNdx].name - 1;
  envVars[envNdx].nameLen = nameLen;
  activeNdx = envVarsTotal - 1;
  if (__findenv(envVars[envNdx].name, nameLen, &activeNdx,
      0) == ((void*)0)) {
   __env_warnx(CorruptEnvFindMsg, envVars[envNdx].name,
       nameLen);
   errno = EFAULT;
   goto Failure;
  }
  envVars[activeNdx].active = 1;
 }


 origEnviron = environ;
 environ = ((void*)0);
 if (__rebuild_environ(envVarsTotal) == 0)
  return (0);

Failure:
 savedErrno = errno;
 __clean_env(1);
 errno = savedErrno;

 return (-1);
}
