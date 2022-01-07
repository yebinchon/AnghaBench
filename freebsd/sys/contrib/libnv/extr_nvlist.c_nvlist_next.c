
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int NVLIST_ASSERT (int const*) ;
 int * nvlist_first_nvpair (int const*) ;
 int * nvlist_next_nvpair (int const*,void*) ;
 char const* nvpair_name (int *) ;
 int nvpair_type (int *) ;

const char *
nvlist_next(const nvlist_t *nvl, int *typep, void **cookiep)
{
 nvpair_t *nvp;

 NVLIST_ASSERT(nvl);

 if (cookiep == ((void*)0) || *cookiep == ((void*)0))
  nvp = nvlist_first_nvpair(nvl);
 else
  nvp = nvlist_next_nvpair(nvl, *cookiep);
 if (nvp == ((void*)0))
  return (((void*)0));
 if (typep != ((void*)0))
  *typep = nvpair_type(nvp);
 if (cookiep != ((void*)0))
  *cookiep = nvp;
 return (nvpair_name(nvp));
}
