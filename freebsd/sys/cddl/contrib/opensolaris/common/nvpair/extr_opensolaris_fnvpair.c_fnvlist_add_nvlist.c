
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_add_nvlist (int *,char const*,int *) ;

void
fnvlist_add_nvlist(nvlist_t *nvl, const char *name, nvlist_t *val)
{
 VERIFY0(nvlist_add_nvlist(nvl, name, val));
}
