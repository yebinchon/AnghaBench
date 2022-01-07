
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_VOLATILE ;
 int * env_getenv (char const*) ;
 int env_setenv (char const*,int ,char const*,int *,int *) ;

int
setenv(const char *name, const char *value, int overwrite)
{

    if (overwrite || (env_getenv(name) == ((void*)0)))
 return(env_setenv(name, EV_VOLATILE, value, ((void*)0), ((void*)0)));
    return(0);
}
