
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,void const*,size_t) ;

char * dup_binstr(const void *src, size_t len)
{
 char *res;

 if (src == ((void*)0))
  return ((void*)0);
 res = os_malloc(len + 1);
 if (res == ((void*)0))
  return ((void*)0);
 os_memcpy(res, src, len);
 res[len] = '\0';

 return res;
}
