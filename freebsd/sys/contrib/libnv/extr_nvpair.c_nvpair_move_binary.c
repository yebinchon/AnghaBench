
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvpair_t ;


 int EINVAL ;
 int ERRNO_RESTORE () ;
 int ERRNO_SAVE () ;
 int ERRNO_SET (int ) ;
 int NV_TYPE_BINARY ;
 int nv_free (void*) ;
 int * nvpair_allocv (char const*,int ,int ,size_t,int ) ;

nvpair_t *
nvpair_move_binary(const char *name, void *value, size_t size)
{
 nvpair_t *nvp;

 if (value == ((void*)0) || size == 0) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 nvp = nvpair_allocv(name, NV_TYPE_BINARY, (uint64_t)(uintptr_t)value,
     size, 0);
 if (nvp == ((void*)0)) {
  ERRNO_SAVE();
  nv_free(value);
  ERRNO_RESTORE();
 }

 return (nvp);
}
