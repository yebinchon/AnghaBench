
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
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
 int ** nv_malloc (int) ;
 int * nvlist_clone (int const* const) ;
 int nvlist_destroy (int *) ;
 int nvlist_flags (int *) ;
 int nvlist_set_array_next (int *,int *) ;
 int nvlist_set_flags (int *,int) ;
 int nvlist_set_parent (int *,int *) ;
 int * nvpair_allocv (char const*,int ,int ,int ,size_t) ;

nvpair_t *
nvpair_create_nvlist_array(const char *name, const nvlist_t * const *value,
    size_t nitems)
{
 unsigned int ii;
 nvlist_t **nvls;
 nvpair_t *parent;
 int flags;

 nvls = ((void*)0);

 if (value == ((void*)0) || nitems == 0) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 nvls = nv_malloc(sizeof(value[0]) * nitems);
 if (nvls == ((void*)0))
  return (((void*)0));

 for (ii = 0; ii < nitems; ii++) {
  if (value[ii] == ((void*)0)) {
   ERRNO_SET(EINVAL);
   goto fail;
  }

  nvls[ii] = nvlist_clone(value[ii]);
  if (nvls[ii] == ((void*)0))
   goto fail;

  if (ii > 0) {
   nvpair_t *nvp;

   nvp = nvpair_allocv(" ", NV_TYPE_NVLIST,
       (uint64_t)(uintptr_t)nvls[ii], 0, 0);
   if (nvp == ((void*)0)) {
    ERRNO_SAVE();
    nvlist_destroy(nvls[ii]);
    ERRNO_RESTORE();
    goto fail;
   }
   nvlist_set_array_next(nvls[ii - 1], nvp);
  }
 }
 flags = nvlist_flags(nvls[nitems - 1]) | NV_FLAG_IN_ARRAY;
 nvlist_set_flags(nvls[nitems - 1], flags);

 parent = nvpair_allocv(name, NV_TYPE_NVLIST_ARRAY,
     (uint64_t)(uintptr_t)nvls, 0, nitems);
 if (parent == ((void*)0))
  goto fail;

 for (ii = 0; ii < nitems; ii++)
  nvlist_set_parent(nvls[ii], parent);

 return (parent);

fail:
 ERRNO_SAVE();
 for (; ii > 0; ii--)
  nvlist_destroy(nvls[ii - 1]);
 nv_free(nvls);
 ERRNO_RESTORE();

 return (((void*)0));
}
