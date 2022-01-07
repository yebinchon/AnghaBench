
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ldns_status ;
typedef int ldns_rr ;
struct TYPE_4__ {struct TYPE_4__* next; int * rr; } ;
typedef TYPE_1__ ldns_dnssec_rrs ;


 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_OK ;
 TYPE_1__* ldns_dnssec_rrs_new () ;
 int ldns_rr_compare (int *,int *) ;

ldns_status
ldns_dnssec_rrs_add_rr(ldns_dnssec_rrs *rrs, ldns_rr *rr)
{
 int cmp;
 ldns_dnssec_rrs *new_rrs;
 if (!rrs || !rr) {
  return LDNS_STATUS_ERR;
 }



 cmp = ldns_rr_compare(rrs->rr, rr);
 if (cmp < 0) {
  if (rrs->next) {
   return ldns_dnssec_rrs_add_rr(rrs->next, rr);
  } else {
   new_rrs = ldns_dnssec_rrs_new();
   new_rrs->rr = rr;
   rrs->next = new_rrs;
  }
 } else if (cmp > 0) {


  new_rrs = ldns_dnssec_rrs_new();
  new_rrs->rr = rrs->rr;
  new_rrs->next = rrs->next;
  rrs->rr = rr;
  rrs->next = new_rrs;
 }

 return LDNS_STATUS_OK;
}
