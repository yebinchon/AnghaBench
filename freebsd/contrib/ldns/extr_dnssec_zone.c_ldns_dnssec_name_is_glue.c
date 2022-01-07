
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_glue; } ;
typedef TYPE_1__ ldns_dnssec_name ;



bool
ldns_dnssec_name_is_glue(const ldns_dnssec_name *name)
{
 if (name) {
  return name->is_glue;
 }
 return 0;
}
