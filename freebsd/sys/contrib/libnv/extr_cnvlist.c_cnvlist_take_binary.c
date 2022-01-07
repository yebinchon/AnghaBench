
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 scalar_t__ NV_TYPE_BINARY ;
 int nvlist_remove_nvpair (int *,void*) ;
 int nvlist_report_missing (scalar_t__,int ) ;
 int nvpair_free_structure (void*) ;
 scalar_t__ nvpair_get_binary (void*,size_t*) ;
 int nvpair_name (void*) ;
 int * nvpair_nvlist (void*) ;
 scalar_t__ nvpair_type (void*) ;

void *
cnvlist_take_binary(void *cookie, size_t *sizep)
{
 void *value;
 nvlist_t *nvl;

 if (nvpair_type(cookie) != NV_TYPE_BINARY)
  nvlist_report_missing(NV_TYPE_BINARY, nvpair_name(cookie));
 nvl = nvpair_nvlist(cookie);
 value = (void *)(intptr_t)nvpair_get_binary(cookie, sizep);
 nvlist_remove_nvpair(nvl, cookie);
 nvpair_free_structure(cookie);
 return (value);
}
