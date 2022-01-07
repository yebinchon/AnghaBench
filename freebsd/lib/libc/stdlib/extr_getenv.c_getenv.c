
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* __findenv (char const*,size_t,int*,int) ;
 char* __findenv_environ (char const*,size_t) ;
 size_t __strleneq (char const*) ;
 int * envVars ;
 int envVarsTotal ;
 int ** environ ;
 int errno ;
 int ** intEnviron ;

char *
getenv(const char *name)
{
 int envNdx;
 size_t nameLen;


 if (name == ((void*)0) || (nameLen = __strleneq(name)) == 0) {
  errno = EINVAL;
  return (((void*)0));
 }
 if (environ == ((void*)0) || environ[0] == ((void*)0))
  return (((void*)0));
 else if (envVars == ((void*)0) || environ != intEnviron)
  return (__findenv_environ(name, nameLen));
 else {
  envNdx = envVarsTotal - 1;
  return (__findenv(name, nameLen, &envNdx, 1));
 }
}
