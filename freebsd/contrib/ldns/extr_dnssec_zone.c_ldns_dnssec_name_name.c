
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rdf ;
struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ ldns_dnssec_name ;



ldns_rdf *
ldns_dnssec_name_name(const ldns_dnssec_name *name)
{
 if (name) {
  return name->name;
 }
 return ((void*)0);
}
