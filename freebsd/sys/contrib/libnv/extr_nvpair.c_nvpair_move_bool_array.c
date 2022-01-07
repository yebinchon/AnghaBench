
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint64_t ;
typedef int nvpair_t ;


 int EINVAL ;
 int ERRNO_RESTORE () ;
 int ERRNO_SAVE () ;
 int ERRNO_SET (int ) ;
 int NV_TYPE_BOOL_ARRAY ;
 int nv_free (int*) ;
 int * nvpair_allocv (char const*,int ,int ,int,size_t) ;

nvpair_t *
nvpair_move_bool_array(const char *name, bool *value, size_t nitems)
{
 nvpair_t *nvp;

 if (value == ((void*)0) || nitems == 0) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 nvp = nvpair_allocv(name, NV_TYPE_BOOL_ARRAY,
     (uint64_t)(uintptr_t)value, sizeof(value[0]) * nitems, nitems);
 if (nvp == ((void*)0)) {
  ERRNO_SAVE();
  nv_free(value);
  ERRNO_RESTORE();
 }

 return (nvp);
}
