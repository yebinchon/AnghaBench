
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int * nvlist_get_array_next (int const*) ;
 int const* nvlist_get_parent (int const*,void**) ;

const nvlist_t *
nvlist_get_pararr(const nvlist_t *nvl, void **cookiep)
{
 const nvlist_t *ret;

 ret = nvlist_get_array_next(nvl);
 if (ret != ((void*)0)) {
  if (cookiep != ((void*)0))
   *cookiep = ((void*)0);
  return (ret);
 }

 return (nvlist_get_parent(nvl, cookiep));
}
