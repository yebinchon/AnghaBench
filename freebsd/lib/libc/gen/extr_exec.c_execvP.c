
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int environ ;
 int execvPe (char const*,char const*,char* const*,int ) ;

int
execvP(const char *name, const char *path, char * const argv[])
{
 return execvPe(name, path, argv, environ);
}
