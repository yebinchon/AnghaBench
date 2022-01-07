
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 int extend_env (char*) ;

void
copy_env(void)
{
    char **p;
    for(p = environ; *p; p++)
 extend_env(*p);
}
