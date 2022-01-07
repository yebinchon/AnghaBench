
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int _set_field (void*,int,int,int ) ;
 int ib_mad_f ;

void mad_set_field(void *buf, int base_offs, enum MAD_FIELDS field,
     uint32_t val)
{
 _set_field(buf, base_offs, ib_mad_f + field, val);
}
