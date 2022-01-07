
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char*,char*,size_t) ;

__attribute__((used)) static int
find_var(char **env, char *assignment, size_t len)
{
    int i;
    for(i = 0; env != ((void*)0) && env[i] != ((void*)0); i++)
 if(strncmp(env[i], assignment, len) == 0)
     return i;
    return -1;
}
