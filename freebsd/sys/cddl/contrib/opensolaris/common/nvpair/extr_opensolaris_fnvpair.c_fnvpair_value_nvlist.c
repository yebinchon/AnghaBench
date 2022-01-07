
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvpair_value_nvlist (int *,int **) ;

nvlist_t *
fnvpair_value_nvlist(nvpair_t *nvp)
{
 nvlist_t *rv;
 VERIFY0(nvpair_value_nvlist(nvp, &rv));
 return (rv);
}
