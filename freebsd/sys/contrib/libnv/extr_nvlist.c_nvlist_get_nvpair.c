
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int NV_TYPE_NONE ;
 int const* nvlist_find (int const*,int ,char const*) ;

const nvpair_t *
nvlist_get_nvpair(const nvlist_t *nvl, const char *name)
{

 return (nvlist_find(nvl, NV_TYPE_NONE, name));
}
