
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int DATA_TYPE_BOOLEAN_ARRAY ;
 int nvlist_lookup_common (int *,char const*,int ,int *,int **) ;

int
nvlist_lookup_boolean_array(nvlist_t *nvl, const char *name,
    boolean_t **a, uint_t *n)
{
 return (nvlist_lookup_common(nvl, name,
     DATA_TYPE_BOOLEAN_ARRAY, n, a));
}
