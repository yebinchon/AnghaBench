
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;


 int DATA_TYPE_DOUBLE ;
 int nvpair_value_common (int *,int ,int *,double*) ;

int
nvpair_value_double(nvpair_t *nvp, double *val)
{
 return (nvpair_value_common(nvp, DATA_TYPE_DOUBLE, ((void*)0), val));
}
