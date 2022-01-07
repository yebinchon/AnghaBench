
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int KM_SLEEP ;
 int nv_alloc_nosleep ;
 int nv_alloc_sleep ;
 int nvlist_xdup (int *,int **,int ) ;

int
nvlist_dup(nvlist_t *nvl, nvlist_t **nvlp, int kmflag)
{




 return (nvlist_xdup(nvl, nvlp, nv_alloc_nosleep));

}
