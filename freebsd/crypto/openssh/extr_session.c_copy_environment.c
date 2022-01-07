
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int copy_environment_blacklist (char**,char***,int *,int *) ;

void
copy_environment(char **source, char ***env, u_int *envsize)
{
 copy_environment_blacklist(source, env, envsize, ((void*)0));
}
