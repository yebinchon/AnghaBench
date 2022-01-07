
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint64_t ;
typedef int nvpair_t ;


 int EBADF ;
 int EINVAL ;
 int ERRNO_RESTORE () ;
 int ERRNO_SAVE () ;
 int ERRNO_SET (int ) ;
 int NV_TYPE_DESCRIPTOR_ARRAY ;
 int close (int) ;
 scalar_t__ fd_is_valid (int) ;
 int nv_free (int*) ;
 int * nvpair_allocv (char const*,int ,int ,int,size_t) ;

nvpair_t *
nvpair_move_descriptor_array(const char *name, int *value, size_t nitems)
{
 nvpair_t *nvp;
 size_t i;

 if (value == ((void*)0) || nitems == 0) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 for (i = 0; i < nitems; i++) {
  if (value[i] != -1 && !fd_is_valid(value[i])) {
   ERRNO_SET(EBADF);
   goto fail;
  }
 }

 nvp = nvpair_allocv(name, NV_TYPE_DESCRIPTOR_ARRAY,
     (uint64_t)(uintptr_t)value, sizeof(value[0]) * nitems, nitems);
 if (nvp == ((void*)0))
  goto fail;

 return (nvp);
fail:
 ERRNO_SAVE();
 for (i = 0; i < nitems; i++) {
  if (fd_is_valid(value[i]))
   close(value[i]);
 }
 nv_free(value);
 ERRNO_RESTORE();

 return (((void*)0));
}
