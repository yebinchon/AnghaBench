
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvlist_t ;


 int DATA_TYPE_STRING_ARRAY ;
 int nvlist_lookup_common (int *,char const*,int ,int *,char***) ;

int
nvlist_lookup_string_array(nvlist_t *nvl, const char *name,
    char ***a, uint_t *n)
{
 return (nvlist_lookup_common(nvl, name, DATA_TYPE_STRING_ARRAY, n, a));
}
