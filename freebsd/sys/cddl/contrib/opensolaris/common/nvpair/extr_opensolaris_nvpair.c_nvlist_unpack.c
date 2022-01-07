
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int KM_SLEEP ;
 int nv_alloc_nosleep ;
 int nv_alloc_sleep ;
 int nvlist_xunpack (char*,size_t,int **,int ) ;

int
nvlist_unpack(char *buf, size_t buflen, nvlist_t **nvlp, int kmflag)
{




 return (nvlist_xunpack(buf, buflen, nvlp, nv_alloc_nosleep));

}
