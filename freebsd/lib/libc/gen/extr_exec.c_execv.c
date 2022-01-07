
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _execve (char const*,char* const*,int ) ;
 int environ ;

int
execv(const char *name, char * const *argv)
{
 (void)_execve(name, argv, environ);
 return (-1);
}
