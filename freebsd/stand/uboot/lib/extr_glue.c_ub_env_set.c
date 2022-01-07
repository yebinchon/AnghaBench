
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_ENV_SET ;
 int syscall (int ,int *,char const*,char*) ;

void
ub_env_set(const char *name, char *value)
{

 syscall(API_ENV_SET, ((void*)0), name, value);
}
