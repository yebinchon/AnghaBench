
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int _get_array (void*,int,int,void*) ;
 int ib_mad_f ;

void mad_get_array(void *buf, int base_offs, enum MAD_FIELDS field, void *val)
{
 _get_array(buf, base_offs, ib_mad_f + field, val);
}
