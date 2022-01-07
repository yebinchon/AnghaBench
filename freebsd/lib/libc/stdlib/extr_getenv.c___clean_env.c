
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int active; struct TYPE_6__* name; scalar_t__ putenv; } ;


 int __remove_putenv (int) ;
 scalar_t__ envActive ;
 TYPE_1__* envVars ;
 int envVarsTotal ;
 TYPE_1__* environ ;
 scalar_t__ environSize ;
 int free (TYPE_1__*) ;
 TYPE_1__* intEnviron ;
 TYPE_1__* origEnviron ;

__attribute__((used)) static void
__clean_env(bool freeVars)
{
 int envNdx;


 if (envVars != ((void*)0)) {
  for (envNdx = envVarsTotal - 1; envNdx >= 0; envNdx--)

   if (envVars[envNdx].putenv) {
    if (!freeVars)
     __remove_putenv(envNdx);
   } else {
    if (freeVars)
     free(envVars[envNdx].name);
    else
     envVars[envNdx].active = 0;
   }
  if (freeVars) {
   free(envVars);
   envVars = ((void*)0);
  } else
   envActive = 0;


  if (origEnviron != ((void*)0)) {
   if (environ == intEnviron)
    environ = origEnviron;
   free(intEnviron);
   intEnviron = ((void*)0);
   environSize = 0;
  }
 }

 return;
}
