
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ldns_rr ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ ldns_dnssec_name ;


 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_dnssec_name_add_rr (TYPE_1__*,int *) ;
 int ldns_dnssec_name_free (TYPE_1__*) ;
 TYPE_1__* ldns_dnssec_name_new () ;
 int ldns_rr_owner (int *) ;

ldns_dnssec_name *
ldns_dnssec_name_new_frm_rr(ldns_rr *rr)
{
 ldns_dnssec_name *new_name = ldns_dnssec_name_new();

 new_name->name = ldns_rr_owner(rr);
 if(ldns_dnssec_name_add_rr(new_name, rr) != LDNS_STATUS_OK) {
  ldns_dnssec_name_free(new_name);
  return ((void*)0);
 }

 return new_name;
}
