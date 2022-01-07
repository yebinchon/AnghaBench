
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * envVars ;
 int envVarsTotal ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
__remove_putenv(int envNdx)
{
 envVarsTotal--;
 if (envVarsTotal > envNdx)
  memmove(&(envVars[envNdx]), &(envVars[envNdx + 1]),
      (envVarsTotal - envNdx) * sizeof (*envVars));
 memset(&(envVars[envVarsTotal]), 0, sizeof (*envVars));

 return;
}
