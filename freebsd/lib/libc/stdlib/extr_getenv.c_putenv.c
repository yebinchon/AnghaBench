
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int putenv; char* name; int active; int nameLen; int valueSize; int * value; } ;


 int EINVAL ;
 int __build_env () ;
 int __enlarge_env () ;
 int * __findenv (char*,size_t,int*,int) ;
 int __merge_environ () ;
 int __rebuild_environ (int) ;
 int envActive ;
 TYPE_1__* envVars ;
 int envVarsTotal ;
 int errno ;
 char* strchr (char*,char) ;

int
putenv(char *string)
{
 char *equals;
 int envNdx;
 int newEnvActive;
 size_t nameLen;


 if (string == ((void*)0) || (equals = strchr(string, '=')) == ((void*)0) ||
     (nameLen = equals - string) == 0) {
  errno = EINVAL;
  return (-1);
 }


 if (__merge_environ() == -1 || (envVars == ((void*)0) && __build_env() == -1))
  return (-1);


 envNdx = envVarsTotal - 1;
 newEnvActive = envActive;
 if (__findenv(string, nameLen, &envNdx, 1) != ((void*)0)) {

  if (envVars[envNdx].putenv) {
   envVars[envNdx].name = string;
   return (__rebuild_environ(envActive));
  } else {
   newEnvActive--;
   envVars[envNdx].active = 0;
  }
 }


 envNdx = envVarsTotal;
 if (!__enlarge_env())
  return (-1);


 envVars[envNdx].name = string;
 envVars[envNdx].nameLen = -1;
 envVars[envNdx].value = ((void*)0);
 envVars[envNdx].valueSize = -1;
 envVars[envNdx].putenv = 1;
 envVars[envNdx].active = 1;
 newEnvActive++;

 return (__rebuild_environ(newEnvActive));
}
