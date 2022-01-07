
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvpair_t ;


 int DATA_TYPE_STRING_ARRAY ;
 int nvpair_value_common (int *,int ,int *,char***) ;

int
nvpair_value_string_array(nvpair_t *nvp, char ***val, uint_t *nelem)
{
 return (nvpair_value_common(nvp, DATA_TYPE_STRING_ARRAY, nelem, val));
}
