
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_lookup_nvpair (int *,char const*,int **) ;

nvpair_t *
fnvlist_lookup_nvpair(nvlist_t *nvl, const char *name)
{
 nvpair_t *rv;
 VERIFY0(nvlist_lookup_nvpair(nvl, name, &rv));
 return (rv);
}
