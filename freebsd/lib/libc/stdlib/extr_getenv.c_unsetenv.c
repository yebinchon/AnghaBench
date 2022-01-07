
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; scalar_t__ putenv; } ;


 int EINVAL ;
 int __build_env () ;
 int * __findenv (char const*,size_t,int*,int) ;
 int __merge_environ () ;
 int __rebuild_environ (int) ;
 int __remove_putenv (int) ;
 size_t __strleneq (char const*) ;
 int envActive ;
 TYPE_1__* envVars ;
 int envVarsTotal ;
 int errno ;

int
unsetenv(const char *name)
{
 int envNdx;
 size_t nameLen;
 int newEnvActive;


 if (name == ((void*)0) || (nameLen = __strleneq(name)) == 0) {
  errno = EINVAL;
  return (-1);
 }


 if (__merge_environ() == -1 || (envVars == ((void*)0) && __build_env() == -1))
  return (-1);



 envNdx = envVarsTotal - 1;
 newEnvActive = envActive;
 while (__findenv(name, nameLen, &envNdx, 1) != ((void*)0)) {
  envVars[envNdx].active = 0;
  if (envVars[envNdx].putenv)
   __remove_putenv(envNdx);
  envNdx--;
  newEnvActive--;
 }
 if (newEnvActive != envActive)
  __rebuild_environ(newEnvActive);

 return (0);
}
