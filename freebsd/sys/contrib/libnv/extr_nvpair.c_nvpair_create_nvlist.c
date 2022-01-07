
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 int NV_TYPE_NVLIST ;
 int * nvlist_clone (int const*) ;
 int nvlist_destroy (int *) ;
 int nvlist_set_parent (int *,int *) ;
 int * nvpair_allocv (char const*,int ,int ,int ,int ) ;

nvpair_t *
nvpair_create_nvlist(const char *name, const nvlist_t *value)
{
 nvlist_t *nvl;
 nvpair_t *nvp;

 if (value == ((void*)0)) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 nvl = nvlist_clone(value);
 if (nvl == ((void*)0))
  return (((void*)0));

 nvp = nvpair_allocv(name, NV_TYPE_NVLIST, (uint64_t)(uintptr_t)nvl, 0,
     0);
 if (nvp == ((void*)0))
  nvlist_destroy(nvl);
 else
  nvlist_set_parent(nvl, nvp);

 return (nvp);
}
