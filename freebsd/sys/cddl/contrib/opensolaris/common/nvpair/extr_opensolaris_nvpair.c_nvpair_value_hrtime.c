
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int hrtime_t ;


 int DATA_TYPE_HRTIME ;
 int nvpair_value_common (int *,int ,int *,int *) ;

int
nvpair_value_hrtime(nvpair_t *nvp, hrtime_t *val)
{
 return (nvpair_value_common(nvp, DATA_TYPE_HRTIME, ((void*)0), val));
}
