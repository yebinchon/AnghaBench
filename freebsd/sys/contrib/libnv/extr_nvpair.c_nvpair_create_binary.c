
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvpair_t ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 int NV_TYPE_BINARY ;
 int memcpy (void*,void const*,size_t) ;
 int nv_free (void*) ;
 void* nv_malloc (size_t) ;
 int * nvpair_allocv (char const*,int ,int ,size_t,int ) ;

nvpair_t *
nvpair_create_binary(const char *name, const void *value, size_t size)
{
 nvpair_t *nvp;
 void *data;

 if (value == ((void*)0) || size == 0) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 data = nv_malloc(size);
 if (data == ((void*)0))
  return (((void*)0));
 memcpy(data, value, size);

 nvp = nvpair_allocv(name, NV_TYPE_BINARY, (uint64_t)(uintptr_t)data,
     size, 0);
 if (nvp == ((void*)0))
  nv_free(data);

 return (nvp);
}
