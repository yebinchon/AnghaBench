
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t dname_len; int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct query_info {scalar_t__ qtype; int * qname; } ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ dname_canonical_compare (int *,int *) ;
 int dname_is_root (int *) ;
 scalar_t__ dname_is_wild (int *) ;
 int dname_remove_label (int **,size_t*) ;
 scalar_t__ dname_strict_subdomain_c (int *,int *) ;
 scalar_t__ dname_subdomain_c (int *,int *) ;
 int log_assert (int **) ;
 int nsec_get_next (struct ub_packed_rrset_key*,int **,size_t*) ;
 scalar_t__ nsec_has_type (struct ub_packed_rrset_key*,scalar_t__) ;
 scalar_t__ query_dname_compare (int *,int *) ;

int nsec_proves_nodata(struct ub_packed_rrset_key* nsec,
 struct query_info* qinfo, uint8_t** wc)
{
 log_assert(wc);
 if(query_dname_compare(nsec->rk.dname, qinfo->qname) != 0) {
  uint8_t* nm;
  size_t ln;
  if(!nsec_get_next(nsec, &nm, &ln))
   return 0;
  if(dname_strict_subdomain_c(nm, qinfo->qname) &&
   dname_canonical_compare(nsec->rk.dname,
    qinfo->qname) < 0) {
   return 1;
  }
  if(dname_is_wild(nsec->rk.dname)) {

   uint8_t* ce = nsec->rk.dname;
   size_t ce_len = nsec->rk.dname_len;
   dname_remove_label(&ce, &ce_len);




   if(dname_strict_subdomain_c(qinfo->qname, ce)) {


    if(nsec_has_type(nsec, LDNS_RR_TYPE_CNAME)) {

     return 0;
    }
    if(nsec_has_type(nsec, LDNS_RR_TYPE_NS) &&
       !nsec_has_type(nsec, LDNS_RR_TYPE_SOA)) {

     return 0;
    }
    if(nsec_has_type(nsec, qinfo->qtype)) {
     return 0;
    }
    *wc = ce;
    return 1;
   }
  } else {


   while (dname_canonical_compare(nsec->rk.dname, nm) < 0) {


    if (dname_subdomain_c(qinfo->qname, nm))
     break;



    if (dname_is_wild(nm)) {
     size_t ce_len = ln;
     uint8_t* ce = nm;
     dname_remove_label(&ce, &ce_len);
     if(dname_strict_subdomain_c(qinfo->qname, ce)) {
      *wc = ce;
      return 1;
     }
    }
    dname_remove_label(&nm, &ln);
   }
  }



  return 0;
 }


 if(nsec_has_type(nsec, qinfo->qtype)) {
  return 0;
 }


 if(nsec_has_type(nsec, LDNS_RR_TYPE_CNAME)) {
  return 0;
 }






 if(qinfo->qtype != LDNS_RR_TYPE_DS &&
  nsec_has_type(nsec, LDNS_RR_TYPE_NS) &&
  !nsec_has_type(nsec, LDNS_RR_TYPE_SOA)) {
  return 0;
 } else if(qinfo->qtype == LDNS_RR_TYPE_DS &&
  nsec_has_type(nsec, LDNS_RR_TYPE_SOA) &&
  !dname_is_root(qinfo->qname)) {
  return 0;
 }

 return 1;
}
