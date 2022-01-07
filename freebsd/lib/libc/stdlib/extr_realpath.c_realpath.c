
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOENT ;
 int PATH_MAX ;
 int errno ;
 int free (char*) ;
 char* malloc (int ) ;
 char* realpath1 (char const*,char*) ;

char *
realpath(const char * __restrict path, char * __restrict resolved)
{
 char *m, *res;

 if (path == ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }
 if (path[0] == '\0') {
  errno = ENOENT;
  return (((void*)0));
 }
 if (resolved != ((void*)0)) {
  m = ((void*)0);
 } else {
  m = resolved = malloc(PATH_MAX);
  if (resolved == ((void*)0))
   return (((void*)0));
 }
 res = realpath1(path, resolved);
 if (res == ((void*)0))
  free(m);
 return (res);
}
