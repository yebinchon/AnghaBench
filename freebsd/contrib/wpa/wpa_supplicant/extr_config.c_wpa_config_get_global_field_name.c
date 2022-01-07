
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int param1; } ;


 unsigned int NUM_GLOBAL_FIELDS ;
 TYPE_1__* global_fields ;

const char * wpa_config_get_global_field_name(unsigned int i, int *no_var)
{
 if (i >= NUM_GLOBAL_FIELDS)
  return ((void*)0);

 if (no_var)
  *no_var = !global_fields[i].param1;
 return global_fields[i].name;
}
