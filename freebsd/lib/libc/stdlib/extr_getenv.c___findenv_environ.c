
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 scalar_t__ strncmpeq (char*,char const*,size_t) ;

__attribute__((used)) static char *
__findenv_environ(const char *name, size_t nameLen)
{
 int envNdx;


 for (envNdx = 0; environ[envNdx] != ((void*)0); envNdx++)
  if (strncmpeq(environ[envNdx], name, nameLen))
   return (&(environ[envNdx][nameLen + sizeof("=") - 1]));

 return (((void*)0));
}
