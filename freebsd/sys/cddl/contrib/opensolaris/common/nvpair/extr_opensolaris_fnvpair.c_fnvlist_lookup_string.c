
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_lookup_string (int *,char const*,char**) ;

char *
fnvlist_lookup_string(nvlist_t *nvl, const char *name)
{
 char *rv;
 VERIFY0(nvlist_lookup_string(nvl, name, &rv));
 return (rv);
}
