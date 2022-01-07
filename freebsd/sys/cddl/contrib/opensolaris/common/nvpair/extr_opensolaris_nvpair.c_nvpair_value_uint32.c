
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nvpair_t ;


 int DATA_TYPE_UINT32 ;
 int nvpair_value_common (int *,int ,int *,int *) ;

int
nvpair_value_uint32(nvpair_t *nvp, uint32_t *val)
{
 return (nvpair_value_common(nvp, DATA_TYPE_UINT32, ((void*)0), val));
}
