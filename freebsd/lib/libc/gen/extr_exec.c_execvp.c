
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _execvpe (char const*,char* const*,int ) ;
 int environ ;

int
execvp(const char *name, char * const *argv)
{
 return (_execvpe(name, argv, environ));
}
