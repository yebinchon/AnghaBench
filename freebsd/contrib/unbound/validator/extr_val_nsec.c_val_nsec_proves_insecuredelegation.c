
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct query_info {scalar_t__ qtype; int qname; } ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ dname_strict_subdomain_c (int ,int ) ;
 scalar_t__ dname_subdomain_c (int ,int ) ;
 scalar_t__ nsec_has_type (struct ub_packed_rrset_key*,scalar_t__) ;

int val_nsec_proves_insecuredelegation(struct ub_packed_rrset_key* nsec,
 struct query_info* qinfo)
{
 if(nsec_has_type(nsec, LDNS_RR_TYPE_NS) &&
  !nsec_has_type(nsec, LDNS_RR_TYPE_DS) &&
  !nsec_has_type(nsec, LDNS_RR_TYPE_SOA)) {

  if(qinfo->qtype == LDNS_RR_TYPE_DS) {


   if(dname_strict_subdomain_c(qinfo->qname,
    nsec->rk.dname))
    return 1;
  } else {
   if(dname_subdomain_c(qinfo->qname, nsec->rk.dname))
    return 1;
  }
 }
 return 0;
}
