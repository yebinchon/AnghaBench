
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 scalar_t__ EINVAL ;
 int ERRNO_SET (scalar_t__) ;
 int NV_TYPE_NVLIST ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_error (int *) ;
 int * nvlist_get_nvpair_parent (int *) ;
 int nvlist_set_parent (int *,int *) ;
 int * nvpair_allocv (char const*,int ,int ,int ,int ) ;

nvpair_t *
nvpair_move_nvlist(const char *name, nvlist_t *value)
{
 nvpair_t *nvp;

 if (value == ((void*)0) || nvlist_get_nvpair_parent(value) != ((void*)0)) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 if (nvlist_error(value) != 0) {
  ERRNO_SET(nvlist_error(value));
  nvlist_destroy(value);
  return (((void*)0));
 }

 nvp = nvpair_allocv(name, NV_TYPE_NVLIST, (uint64_t)(uintptr_t)value,
     0, 0);
 if (nvp == ((void*)0))
  nvlist_destroy(value);
 else
  nvlist_set_parent(value, nvp);

 return (nvp);
}
