
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
 int NV_TYPE_NUMBER_ARRAY ;
 int memcpy (void*,int const*,size_t) ;
 int nv_free (void*) ;
 void* nv_malloc (size_t) ;
 int * nvpair_allocv (char const*,int ,int ,size_t,size_t) ;

nvpair_t *
nvpair_create_number_array(const char *name, const uint64_t *value,
    size_t nitems)
{
 nvpair_t *nvp;
 size_t size;
 void *data;

 if (value == ((void*)0) || nitems == 0) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 size = sizeof(value[0]) * nitems;
 data = nv_malloc(size);
 if (data == ((void*)0))
  return (((void*)0));

 memcpy(data, value, size);
 nvp = nvpair_allocv(name, NV_TYPE_NUMBER_ARRAY,
     (uint64_t)(uintptr_t)data, size, nitems);
 if (nvp == ((void*)0)) {
  ERRNO_SAVE();
  nv_free(data);
  ERRNO_RESTORE();
 }

 return (nvp);
}
