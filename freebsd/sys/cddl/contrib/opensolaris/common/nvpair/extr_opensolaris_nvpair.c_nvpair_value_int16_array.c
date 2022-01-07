
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvpair_t ;
typedef int int16_t ;


 int DATA_TYPE_INT16_ARRAY ;
 int nvpair_value_common (int *,int ,int *,int **) ;

int
nvpair_value_int16_array(nvpair_t *nvp, int16_t **val, uint_t *nelem)
{
 return (nvpair_value_common(nvp, DATA_TYPE_INT16_ARRAY, nelem, val));
}
