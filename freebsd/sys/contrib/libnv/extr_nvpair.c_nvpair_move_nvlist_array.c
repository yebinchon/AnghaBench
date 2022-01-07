
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int ERRNO_RESTORE () ;
 int ERRNO_SAVE () ;
 int ERRNO_SET (int ) ;
 int NV_FLAG_IN_ARRAY ;
 int NV_TYPE_NVLIST ;
 int NV_TYPE_NVLIST_ARRAY ;
 int nv_free (int **) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_error (int *) ;
 int nvlist_flags (int *) ;
 int * nvlist_get_pararr (int *,int *) ;
 int nvlist_set_array_next (int *,int *) ;
 int nvlist_set_flags (int *,int) ;
 int nvlist_set_parent (int *,int *) ;
 int * nvpair_allocv (char const*,int ,int ,int ,size_t) ;

nvpair_t *
nvpair_move_nvlist_array(const char *name, nvlist_t **value, size_t nitems)
{
 nvpair_t *parent;
 unsigned int ii;
 int flags;

 if (value == ((void*)0) || nitems == 0) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 for (ii = 0; ii < nitems; ii++) {
  if (value == ((void*)0) || nvlist_error(value[ii]) != 0 ||
      nvlist_get_pararr(value[ii], ((void*)0)) != ((void*)0)) {
   ERRNO_SET(EINVAL);
   goto fail;
  }
  if (ii > 0) {
   nvpair_t *nvp;

   nvp = nvpair_allocv(" ", NV_TYPE_NVLIST,
       (uint64_t)(uintptr_t)value[ii], 0, 0);
   if (nvp == ((void*)0))
    goto fail;
   nvlist_set_array_next(value[ii - 1], nvp);
  }
 }
 flags = nvlist_flags(value[nitems - 1]) | NV_FLAG_IN_ARRAY;
 nvlist_set_flags(value[nitems - 1], flags);

 parent = nvpair_allocv(name, NV_TYPE_NVLIST_ARRAY,
     (uint64_t)(uintptr_t)value, 0, nitems);
 if (parent == ((void*)0))
  goto fail;

 for (ii = 0; ii < nitems; ii++)
  nvlist_set_parent(value[ii], parent);

 return (parent);
fail:
 ERRNO_SAVE();
 for (ii = 0; ii < nitems; ii++) {
  if (value[ii] != ((void*)0) &&
      nvlist_get_pararr(value[ii], ((void*)0)) != ((void*)0)) {
   nvlist_destroy(value[ii]);
  }
 }
 nv_free(value);
 ERRNO_RESTORE();

 return (((void*)0));
}
