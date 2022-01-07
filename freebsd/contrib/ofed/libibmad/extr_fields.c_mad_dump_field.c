
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int IB_FIELD_LAST_ ;
 int IB_NO_FIELD ;
 char* _mad_dump_field (int,int ,char*,int,void*) ;
 int ib_mad_f ;

char *mad_dump_field(enum MAD_FIELDS field, char *buf, int bufsz, void *val)
{
 if (field <= IB_NO_FIELD || field >= IB_FIELD_LAST_)
  return ((void*)0);
 return _mad_dump_field(ib_mad_f + field, 0, buf, bufsz, val);
}
