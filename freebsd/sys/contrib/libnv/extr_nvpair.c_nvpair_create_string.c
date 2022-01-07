
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvpair_t ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 int NV_TYPE_STRING ;
 int nv_free (char*) ;
 char* nv_strdup (char const*) ;
 int * nvpair_allocv (char const*,int ,int ,size_t,int ) ;
 int strlen (char const*) ;

nvpair_t *
nvpair_create_string(const char *name, const char *value)
{
 nvpair_t *nvp;
 size_t size;
 char *data;

 if (value == ((void*)0)) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 data = nv_strdup(value);
 if (data == ((void*)0))
  return (((void*)0));
 size = strlen(value) + 1;

 nvp = nvpair_allocv(name, NV_TYPE_STRING, (uint64_t)(uintptr_t)data,
     size, 0);
 if (nvp == ((void*)0))
  nv_free(data);

 return (nvp);
}
