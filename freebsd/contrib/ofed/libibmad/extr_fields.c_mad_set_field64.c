
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int _set_field64 (void*,int,int,int ) ;
 int ib_mad_f ;

void mad_set_field64(void *buf, int base_offs, enum MAD_FIELDS field,
       uint64_t val)
{
 _set_field64(buf, base_offs, ib_mad_f + field, val);
}
