
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 scalar_t__ nvlist_exists_binary (int *,char const*) ;
 void* nvlist_take_binary (int *,char const*,size_t*) ;

void *
dnvlist_take_binary(nvlist_t *nvl, const char *name, size_t *sizep,
    void *defval, size_t defsize)
{
 void *value;

 if (nvlist_exists_binary(nvl, name))
  value = nvlist_take_binary(nvl, name, sizep);
 else {
  if (sizep != ((void*)0))
   *sizep = defsize;
  value = defval;
 }
 return (value);
}
