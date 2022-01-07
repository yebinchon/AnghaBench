
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* ib_mad_f ;

const char *mad_field_name(enum MAD_FIELDS field)
{
 return (ib_mad_f[field].name);
}
