
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;
typedef int nvpair_t ;


 int DATA_TYPE_BYTE ;
 int nvpair_value_common (int *,int ,int *,int *) ;

int
nvpair_value_byte(nvpair_t *nvp, uchar_t *val)
{
 return (nvpair_value_common(nvp, DATA_TYPE_BYTE, ((void*)0), val));
}
