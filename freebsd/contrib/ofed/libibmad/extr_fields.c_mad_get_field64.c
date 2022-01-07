
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int _get_field64 (void*,int,int) ;
 int ib_mad_f ;

uint64_t mad_get_field64(void *buf, int base_offs, enum MAD_FIELDS field)
{
 return _get_field64(buf, base_offs, ib_mad_f + field);
}
