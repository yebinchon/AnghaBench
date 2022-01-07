
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_resolver ;


 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_resolver_push_nameserver_rr (int *,int *) ;
 int * ldns_rr_list_rr (int const*,size_t) ;
 size_t ldns_rr_list_rr_count (int const*) ;

ldns_status
ldns_resolver_push_nameserver_rr_list(ldns_resolver *r, const ldns_rr_list *rrlist)
{
 ldns_rr *rr;
 ldns_status stat;
 size_t i;

 stat = LDNS_STATUS_OK;
 if (rrlist) {
  for(i = 0; i < ldns_rr_list_rr_count(rrlist); i++) {
   rr = ldns_rr_list_rr(rrlist, i);
   if (ldns_resolver_push_nameserver_rr(r, rr) != LDNS_STATUS_OK) {
    stat = LDNS_STATUS_ERR;
    break;
   }
  }
  return stat;
 } else {
  return LDNS_STATUS_ERR;
 }
}
