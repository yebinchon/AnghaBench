
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_ENV_GET ;
 int syscall (int ,int *,char const*,char**) ;

char *
ub_env_get(const char *name)
{
 char *value;

 if (!syscall(API_ENV_GET, ((void*)0), name, &value))
  return (((void*)0));

 return (value);
}
