
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; size_t valueSize; size_t nameLen; char* value; int * name; scalar_t__ putenv; } ;


 int __enlarge_env () ;
 int * __findenv (char const*,size_t,int*,int) ;
 int __rebuild_environ (int) ;
 int __remove_putenv (int) ;
 int envActive ;
 TYPE_1__* envVars ;
 int envVarsTotal ;
 int * malloc (int) ;
 char* stpncpy (int *,char const*,size_t) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
__setenv(const char *name, size_t nameLen, const char *value, int overwrite)
{
 bool reuse;
 char *env;
 int envNdx;
 int newEnvActive;
 size_t valueLen;


 envNdx = envVarsTotal - 1;
 newEnvActive = envActive;
 valueLen = strlen(value);
 reuse = 0;
 if (__findenv(name, nameLen, &envNdx, 0) != ((void*)0)) {

  if (envVars[envNdx].active) {
   if (overwrite == 0)
    return (0);
   envVars[envNdx].active = 0;
   newEnvActive--;
  }


  if (envVars[envNdx].putenv)
   __remove_putenv(envNdx);


  else if (envVars[envNdx].valueSize >= valueLen)
   reuse = 1;
 }


 if (! reuse) {

  envNdx = envVarsTotal;
  if (!__enlarge_env())
   return (-1);


  envVars[envNdx].name = malloc(nameLen + sizeof ("=") +
      valueLen);
  if (envVars[envNdx].name == ((void*)0)) {
   envVarsTotal--;
   return (-1);
  }
  envVars[envNdx].nameLen = nameLen;
  envVars[envNdx].valueSize = valueLen;


  env = stpncpy(envVars[envNdx].name, name, nameLen);
  *env++ = '=';
 }
 else
  env = envVars[envNdx].value;


 strcpy(env, value);
 envVars[envNdx].value = env;
 envVars[envNdx].active = 1;
 newEnvActive++;


 if (reuse && newEnvActive == envActive)
  return (0);
 else
  return (__rebuild_environ(newEnvActive));
}
