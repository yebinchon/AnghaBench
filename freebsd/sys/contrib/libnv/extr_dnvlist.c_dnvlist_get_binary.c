
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 scalar_t__ nvlist_exists_binary (int const*,char const*) ;
 void* nvlist_get_binary (int const*,char const*,size_t*) ;

const void *
dnvlist_get_binary(const nvlist_t *nvl, const char *name, size_t *sizep,
    const void *defval, size_t defsize)
{
 const void *value;

 if (nvlist_exists_binary(nvl, name))
  value = nvlist_get_binary(nvl, name, sizep);
 else {
  if (sizep != ((void*)0))
   *sizep = defsize;
  value = defval;
 }
 return (value);
}
