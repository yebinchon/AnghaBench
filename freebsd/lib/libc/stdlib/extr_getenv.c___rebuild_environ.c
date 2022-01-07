
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; scalar_t__ active; } ;


 int envActive ;
 TYPE_1__* envVars ;
 int envVarsTotal ;
 char** environ ;
 int environSize ;
 char** intEnviron ;
 char** reallocarray (char**,int,int) ;

__attribute__((used)) static int
__rebuild_environ(int newEnvironSize)
{
 char **tmpEnviron;
 int envNdx;
 int environNdx;
 int tmpEnvironSize;


 if (newEnvironSize > environSize) {
  tmpEnvironSize = newEnvironSize * 2;
  tmpEnviron = reallocarray(intEnviron, tmpEnvironSize + 1,
      sizeof(*intEnviron));
  if (tmpEnviron == ((void*)0))
   return (-1);
  environSize = tmpEnvironSize;
  intEnviron = tmpEnviron;
 }
 envActive = newEnvironSize;


 for (envNdx = envVarsTotal - 1, environNdx = 0; envNdx >= 0; envNdx--)
  if (envVars[envNdx].active)
   intEnviron[environNdx++] = envVars[envNdx].name;
 intEnviron[environNdx] = ((void*)0);


 environ = intEnviron;

 return (0);
}
