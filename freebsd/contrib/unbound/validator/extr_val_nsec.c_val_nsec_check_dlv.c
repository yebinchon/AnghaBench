
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct reply_info {scalar_t__ an_numrrsets; size_t ns_numrrsets; TYPE_2__** rrsets; int flags; } ;
struct query_info {int qname; } ;
struct TYPE_6__ {int type; int dname; } ;
struct TYPE_7__ {TYPE_1__ rk; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 int LDNS_RR_TYPE_DLV ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 int VERB_ALGO ;
 int dlv_topdomain (TYPE_2__*,int ,int **,size_t*) ;
 int dname_canonical_compare (int ,int ) ;
 int dname_remove_label (int **,size_t*) ;
 scalar_t__ dname_strict_subdomain_c (int *,int ) ;
 scalar_t__ htons (int ) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int nsec_get_next (TYPE_2__*,int **,size_t*) ;
 scalar_t__ nsec_has_type (TYPE_2__*,int ) ;
 int ntohs (int ) ;
 scalar_t__ val_nsec_proves_name_error (TYPE_2__*,int ) ;

int val_nsec_check_dlv(struct query_info* qinfo,
        struct reply_info* rep, uint8_t** nm, size_t* nm_len)
{
 uint8_t* next;
 size_t i, nlen;
 int c;

 if(rep->an_numrrsets != 0) {
  return 0;
 }

 if(FLAGS_GET_RCODE(rep->flags) == LDNS_RCODE_NOERROR) {


  for(i=0; i<rep->ns_numrrsets; i++) {
   if(htons(rep->rrsets[i]->rk.type)!=LDNS_RR_TYPE_NSEC ||
    !nsec_get_next(rep->rrsets[i], &next, &nlen))
    continue;
   c = dname_canonical_compare(
    rep->rrsets[i]->rk.dname, qinfo->qname);
   if(c == 0) {

    if(nsec_has_type(rep->rrsets[i],
     LDNS_RR_TYPE_DLV))
     return 0;
    dname_remove_label(nm, nm_len);
    return 1;
   } else if(c < 0 &&
    dname_strict_subdomain_c(next, qinfo->qname)) {

    dlv_topdomain(rep->rrsets[i], qinfo->qname,
     nm, nm_len);
    return 1;
   }
  }
  return 0;
 }


 if(FLAGS_GET_RCODE(rep->flags) == LDNS_RCODE_NXDOMAIN) {


  for(i=0; i<rep->ns_numrrsets; i++) {
   if(htons(rep->rrsets[i]->rk.type) != LDNS_RR_TYPE_NSEC)
    continue;
   if(val_nsec_proves_name_error(rep->rrsets[i],
    qinfo->qname)) {
    log_nametypeclass(VERB_ALGO, "topdomain on",
     rep->rrsets[i]->rk.dname,
     ntohs(rep->rrsets[i]->rk.type), 0);
    dlv_topdomain(rep->rrsets[i], qinfo->qname,
     nm, nm_len);
    return 1;
   }
  }
  return 0;
 }
 return 0;
}
