
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _PATH_DEFPATH ;
 int execvPe (char const*,char const*,char* const*,char* const*) ;
 char* getenv (char*) ;

int
_execvpe(const char *name, char * const argv[], char * const envp[])
{
 const char *path;


 if ((path = getenv("PATH")) == ((void*)0))
  path = _PATH_DEFPATH;

 return (execvPe(name, path, argv, envp));
}
