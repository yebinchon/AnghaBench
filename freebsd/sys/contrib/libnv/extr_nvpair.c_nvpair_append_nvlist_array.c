
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {scalar_t__ nvp_type; scalar_t__ nvp_nitems; scalar_t__ nvp_data; } ;
typedef TYPE_1__ nvpair_t ;
typedef int nvlist_t ;
typedef int nvl ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 int NVPAIR_ASSERT (TYPE_1__*) ;
 int NV_FLAG_IN_ARRAY ;
 int NV_TYPE_NVLIST ;
 scalar_t__ NV_TYPE_NVLIST_ARRAY ;
 int PJDLOG_ASSERT (int) ;
 int * nvlist_clone (int const*) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_error (int const*) ;
 int nvlist_flags (int *) ;
 int * nvlist_get_pararr (int const*,int *) ;
 int nvlist_set_array_next (int *,TYPE_1__*) ;
 int nvlist_set_flags (int *,int) ;
 int nvlist_set_parent (int *,TYPE_1__*) ;
 TYPE_1__* nvpair_allocv (char*,int ,int ,int ,int ) ;
 int nvpair_append (TYPE_1__*,int **,int,int ) ;
 int nvpair_free (TYPE_1__*) ;

int
nvpair_append_nvlist_array(nvpair_t *nvp, const nvlist_t *value)
{
 nvpair_t *tmpnvp;
 nvlist_t *nvl, *prev;
 int flags;

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_NVLIST_ARRAY);
 if (value == ((void*)0) || nvlist_error(value) != 0 ||
     nvlist_get_pararr(value, ((void*)0)) != ((void*)0)) {
  ERRNO_SET(EINVAL);
  return (-1);
 }
 nvl = nvlist_clone(value);
 if (nvl == ((void*)0)) {
  return (-1);
 }
 flags = nvlist_flags(nvl) | NV_FLAG_IN_ARRAY;
 nvlist_set_flags(nvl, flags);

 tmpnvp = ((void*)0);
 prev = ((void*)0);
 if (nvp->nvp_nitems > 0) {
  nvlist_t **nvls = (void *)(uintptr_t)nvp->nvp_data;

  prev = nvls[nvp->nvp_nitems - 1];
  PJDLOG_ASSERT(prev != ((void*)0));

  tmpnvp = nvpair_allocv(" ", NV_TYPE_NVLIST,
      (uint64_t)(uintptr_t)nvl, 0, 0);
  if (tmpnvp == ((void*)0)) {
   goto fail;
  }
 }
 if (nvpair_append(nvp, &nvl, sizeof(nvl), 0) == -1) {
  goto fail;
 }
 if (tmpnvp) {
  NVPAIR_ASSERT(tmpnvp);
  nvlist_set_array_next(prev, tmpnvp);
 }
 nvlist_set_parent(nvl, nvp);
 return (0);
fail:
 if (tmpnvp) {
  nvpair_free(tmpnvp);
 }
 nvlist_destroy(nvl);
 return (-1);
}
