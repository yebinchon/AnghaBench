
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int int64_t ;


 int VERIFY0 (int ) ;
 int nvlist_lookup_int64 (int *,char const*,int *) ;

int64_t
fnvlist_lookup_int64(nvlist_t *nvl, const char *name)
{
 int64_t rv;
 VERIFY0(nvlist_lookup_int64(nvl, name, &rv));
 return (rv);
}
