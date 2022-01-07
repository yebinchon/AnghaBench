
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 int nvlist_merge (int *,int *,int ) ;

void
fnvlist_merge(nvlist_t *dst, nvlist_t *src)
{
 VERIFY0(nvlist_merge(dst, src, KM_SLEEP));
}
