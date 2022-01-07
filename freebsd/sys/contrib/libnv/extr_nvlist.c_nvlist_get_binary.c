
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int NV_TYPE_BINARY ;
 int * nvlist_find (int const*,int ,char const*) ;
 int nvlist_report_missing (int ,char const*) ;
 void const* nvpair_get_binary (int *,size_t*) ;

const void *
nvlist_get_binary(const nvlist_t *nvl, const char *name, size_t *sizep)
{
 nvpair_t *nvp;

 nvp = nvlist_find(nvl, NV_TYPE_BINARY, name);
 if (nvp == ((void*)0))
  nvlist_report_missing(NV_TYPE_BINARY, name);

 return (nvpair_get_binary(nvp, sizep));
}
