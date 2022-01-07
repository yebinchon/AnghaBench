
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** env ;
 int errx (int,char*) ;
 int num_env ;
 char** realloc (char**,int) ;

void
extend_env(char *str)
{
    env = realloc(env, (num_env + 1) * sizeof(*env));
    if(env == ((void*)0))
 errx(1, "Out of memory!");
    env[num_env++] = str;
}
