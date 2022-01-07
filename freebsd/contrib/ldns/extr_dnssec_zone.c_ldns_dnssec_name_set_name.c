
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rdf ;
struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ ldns_dnssec_name ;



void
ldns_dnssec_name_set_name(ldns_dnssec_name *rrset,
      ldns_rdf *dname)
{
 if (rrset && dname) {
  rrset->name = dname;
 }
}
