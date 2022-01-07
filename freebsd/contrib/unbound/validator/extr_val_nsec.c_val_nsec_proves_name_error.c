
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;


 int LDNS_RR_TYPE_DNAME ;
 int LDNS_RR_TYPE_NS ;
 int LDNS_RR_TYPE_SOA ;
 scalar_t__ dname_canonical_compare (int *,int *) ;
 scalar_t__ dname_strict_subdomain_c (int *,int *) ;
 scalar_t__ dname_subdomain_c (int *,int *) ;
 int nsec_get_next (struct ub_packed_rrset_key*,int **,size_t*) ;
 scalar_t__ nsec_has_type (struct ub_packed_rrset_key*,int ) ;
 scalar_t__ query_dname_compare (int *,int *) ;

int
val_nsec_proves_name_error(struct ub_packed_rrset_key* nsec, uint8_t* qname)
{
 uint8_t* owner = nsec->rk.dname;
 uint8_t* next;
 size_t nlen;
 if(!nsec_get_next(nsec, &next, &nlen))
  return 0;


 if(query_dname_compare(qname, owner) == 0) {
  return 0;
 }




 if(dname_subdomain_c(qname, owner) &&
  (nsec_has_type(nsec, LDNS_RR_TYPE_DNAME) ||
  (nsec_has_type(nsec, LDNS_RR_TYPE_NS)
   && !nsec_has_type(nsec, LDNS_RR_TYPE_SOA))
  )) {
  return 0;
 }

 if(query_dname_compare(owner, next) == 0) {



  if(dname_strict_subdomain_c(qname, next))
   return 1;
 }
 else if(dname_canonical_compare(owner, next) > 0) {




  if(dname_canonical_compare(owner, qname) < 0 &&
   dname_strict_subdomain_c(qname, next))
   return 1;
 } else {

  if(dname_canonical_compare(owner, qname) < 0 &&
     dname_canonical_compare(qname, next) < 0) {
   return 1;
  }
 }
 return 0;
}
