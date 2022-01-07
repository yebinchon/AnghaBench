
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct envVars {int dummy; } ;


 struct envVars* envVars ;
 int envVarsSize ;
 int envVarsTotal ;
 struct envVars* reallocarray (struct envVars*,int,int) ;

__attribute__((used)) static inline bool
__enlarge_env(void)
{
 int newEnvVarsSize;
 struct envVars *tmpEnvVars;

 envVarsTotal++;
 if (envVarsTotal > envVarsSize) {
  newEnvVarsSize = envVarsTotal * 2;
  tmpEnvVars = reallocarray(envVars, newEnvVarsSize,
      sizeof(*envVars));
  if (tmpEnvVars == ((void*)0)) {
   envVarsTotal--;
   return (0);
  }
  envVarsSize = newEnvVarsSize;
  envVars = tmpEnvVars;
 }

 return (1);
}
