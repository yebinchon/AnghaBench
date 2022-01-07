
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int DATA_TYPE_NVLIST ;
 int nvpair_value_common (int *,int ,int *,int **) ;

int
nvpair_value_nvlist(nvpair_t *nvp, nvlist_t **val)
{
 return (nvpair_value_common(nvp, DATA_TYPE_NVLIST, ((void*)0), val));
}
