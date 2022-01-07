
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,char const*,size_t) ;
 size_t os_strlen (char const*) ;

char * os_strdup(const char *s)
{
 char *res;
 size_t len;
 if (s == ((void*)0))
  return ((void*)0);
 len = os_strlen(s);
 res = os_malloc(len + 1);
 if (res)
  os_memcpy(res, s, len + 1);
 return res;
}
