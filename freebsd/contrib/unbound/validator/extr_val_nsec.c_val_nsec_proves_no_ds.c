
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct query_info {scalar_t__ qtype; int qname_len; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int log_assert (int) ;
 scalar_t__ nsec_has_type (struct ub_packed_rrset_key*,scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 int sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;

__attribute__((used)) static enum sec_status
val_nsec_proves_no_ds(struct ub_packed_rrset_key* nsec,
 struct query_info* qinfo)
{
 log_assert(qinfo->qtype == LDNS_RR_TYPE_DS);
 log_assert(ntohs(nsec->rk.type) == LDNS_RR_TYPE_NSEC);

 if(nsec_has_type(nsec, LDNS_RR_TYPE_SOA) && qinfo->qname_len != 1) {


  return sec_status_bogus;
 }
 if(nsec_has_type(nsec, LDNS_RR_TYPE_DS)) {


  return sec_status_bogus;
 }

 if(!nsec_has_type(nsec, LDNS_RR_TYPE_NS)) {


  return sec_status_insecure;
 }

 return sec_status_secure;
}
