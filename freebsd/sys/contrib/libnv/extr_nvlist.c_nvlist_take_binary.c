
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int NV_TYPE_BINARY ;
 int * nvlist_find (int *,int ,char const*) ;
 int nvlist_remove_nvpair (int *,int *) ;
 int nvlist_report_missing (int ,char const*) ;
 int nvpair_free_structure (int *) ;
 scalar_t__ nvpair_get_binary (int *,size_t*) ;

void *
nvlist_take_binary(nvlist_t *nvl, const char *name, size_t *sizep)
{
 nvpair_t *nvp;
 void *value;

 nvp = nvlist_find(nvl, NV_TYPE_BINARY, name);
 if (nvp == ((void*)0))
  nvlist_report_missing(NV_TYPE_BINARY, name);

 value = (void *)(intptr_t)nvpair_get_binary(nvp, sizep);
 nvlist_remove_nvpair(nvl, nvp);
 nvpair_free_structure(nvp);
 return (value);
}
