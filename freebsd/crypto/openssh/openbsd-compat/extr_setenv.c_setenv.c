
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* __findenv (char const*,int,int*) ;
 char** environ ;
 int errno ;
 char** lastenv ;
 char* malloc (size_t) ;
 int memcpy (char**,char**,size_t) ;
 scalar_t__ realloc (char**,int) ;
 int strlen (char const*) ;

int
setenv(const char *name, const char *value, int rewrite)
{
 char *C, **P;
 const char *np;
 int l_value, offset = 0;

 for (np = name; *np && *np != '='; ++np)
  ;







 l_value = strlen(value);
 if ((C = __findenv(name, (int)(np - name), &offset)) != ((void*)0)) {
  int tmpoff = offset + 1;
  if (!rewrite)
   return (0);
  while (__findenv(name, (int)(np - name), &tmpoff)) {
   for (P = &environ[tmpoff];; ++P)
    if (!(*P = *(P + 1)))
     break;
  }
 } else {
  size_t cnt;

  for (P = environ; *P != ((void*)0); P++)
   ;
  cnt = P - environ;
  P = (char **)realloc(lastenv, sizeof(char *) * (cnt + 2));
  if (!P)
   return (-1);
  if (lastenv != environ)
   memcpy(P, environ, cnt * sizeof(char *));
  lastenv = environ = P;
  offset = cnt;
  environ[cnt + 1] = ((void*)0);
 }
 if (!(environ[offset] =
     malloc((size_t)((int)(np - name) + l_value + 2))))
  return (-1);
 for (C = environ[offset]; (*C = *name++) && *C != '='; ++C)
  ;
 for (*C++ = '='; (*C++ = *value++); )
  ;
 return (0);
}
