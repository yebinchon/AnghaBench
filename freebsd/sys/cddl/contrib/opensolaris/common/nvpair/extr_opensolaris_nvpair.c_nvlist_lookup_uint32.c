
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nvlist_t ;


 int DATA_TYPE_UINT32 ;
 int nvlist_lookup_common (int *,char const*,int ,int *,int *) ;

int
nvlist_lookup_uint32(nvlist_t *nvl, const char *name, uint32_t *val)
{
 return (nvlist_lookup_common(nvl, name, DATA_TYPE_UINT32, ((void*)0), val));
}
