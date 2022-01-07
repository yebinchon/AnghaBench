
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int nvlist_free (int *,char const*) ;
 char* nvlist_next (int *,int *,void**) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static void
limit_remove(nvlist_t *limits, const char *prefix)
{
 const char *name;
 size_t prefixlen;
 void *cookie;

 prefixlen = strlen(prefix);
again:
 cookie = ((void*)0);
 while ((name = nvlist_next(limits, ((void*)0), &cookie)) != ((void*)0)) {
  if (strncmp(name, prefix, prefixlen) == 0) {
   nvlist_free(limits, name);
   goto again;
  }
 }
}
