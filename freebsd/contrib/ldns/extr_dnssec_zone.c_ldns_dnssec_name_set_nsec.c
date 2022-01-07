
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rr ;
struct TYPE_3__ {int * nsec; } ;
typedef TYPE_1__ ldns_dnssec_name ;



void
ldns_dnssec_name_set_nsec(ldns_dnssec_name *rrset, ldns_rr *nsec)
{
 if (rrset && nsec) {
  rrset->nsec = nsec;
 }
}
