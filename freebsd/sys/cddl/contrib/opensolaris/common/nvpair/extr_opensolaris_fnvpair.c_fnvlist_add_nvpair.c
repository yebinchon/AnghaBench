
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_add_nvpair (int *,int *) ;

void
fnvlist_add_nvpair(nvlist_t *nvl, nvpair_t *pair)
{
 VERIFY0(nvlist_add_nvpair(nvl, pair));
}
