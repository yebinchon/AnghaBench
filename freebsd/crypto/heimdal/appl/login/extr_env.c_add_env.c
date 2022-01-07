
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char const*,char const*) ;
 char** env ;
 int errx (int,char*) ;
 int extend_env (char*) ;
 int free (char*) ;
 int num_env ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

void
add_env(const char *var, const char *value)
{
    int i;
    char *str;
    asprintf(&str, "%s=%s", var, value);
    if(str == ((void*)0))
 errx(1, "Out of memory!");
    for(i = 0; i < num_env; i++)
 if(strncmp(env[i], var, strlen(var)) == 0 &&
    env[i][strlen(var)] == '='){
     free(env[i]);
     env[i] = str;
     return;
 }

    extend_env(str);
}
