
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvlist_t ;


 int KM_SLEEP ;
 int nv_alloc_nosleep ;
 int nv_alloc_sleep ;
 int nvlist_xalloc (int **,int ,int ) ;

int
nvlist_alloc(nvlist_t **nvlp, uint_t nvflag, int kmflag)
{




 return (nvlist_xalloc(nvlp, nvflag, nv_alloc_nosleep));

}
