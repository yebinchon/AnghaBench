
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int KM_SLEEP ;
 int nv_alloc_nosleep ;
 int nv_alloc_sleep ;
 int nvlist_xpack (int *,char**,size_t*,int,int ) ;

int
nvlist_pack(nvlist_t *nvl, char **bufp, size_t *buflen, int encoding,
    int kmflag)
{




 return (nvlist_xpack(nvl, bufp, buflen, encoding, nv_alloc_nosleep));

}
