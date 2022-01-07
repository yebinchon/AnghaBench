
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int IB_FIELD_LAST_ ;
 int IB_NO_FIELD ;
 int _mad_print_field (int,char const*,void*,int ) ;
 int ib_mad_f ;

int mad_print_field(enum MAD_FIELDS field, const char *name, void *val)
{
 if (field <= IB_NO_FIELD || field >= IB_FIELD_LAST_)
  return -1;
 return _mad_print_field(ib_mad_f + field, name, val, 0);
}
