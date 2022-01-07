
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; TYPE_2__** rrsets; } ;
struct query_info {int qname; } ;
typedef enum val_classification { ____Placeholder_val_classification } val_classification ;
struct TYPE_4__ {int type; int dname; } ;
struct TYPE_5__ {TYPE_1__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_DNAME ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int VAL_CLASS_ANY ;
 int VAL_CLASS_CNAME ;
 int VAL_CLASS_CNAMENOANSWER ;
 int VAL_CLASS_NAMEERROR ;
 int VAL_CLASS_NODATA ;
 int VAL_CLASS_POSITIVE ;
 int VAL_CLASS_REFERRAL ;
 int VERB_QUERY ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int val_find_best_signer (TYPE_2__*,struct query_info*,int **,size_t*,int*) ;
 int val_find_rrset_signer (TYPE_2__*,int **,size_t*) ;
 int verbose (int ,char*) ;

void
val_find_signer(enum val_classification subtype, struct query_info* qinf,
 struct reply_info* rep, size_t skip, uint8_t** signer_name,
 size_t* signer_len)
{
 size_t i;

 if(subtype == VAL_CLASS_POSITIVE) {

  for(i=skip; i<rep->an_numrrsets; i++) {
   if(query_dname_compare(qinf->qname,
    rep->rrsets[i]->rk.dname) == 0) {
    val_find_rrset_signer(rep->rrsets[i],
     signer_name, signer_len);
    return;
   }
  }
  *signer_name = ((void*)0);
  *signer_len = 0;
 } else if(subtype == VAL_CLASS_CNAME) {

  for(i=skip; i<rep->an_numrrsets; i++) {
   val_find_rrset_signer(rep->rrsets[i],
    signer_name, signer_len);
   if(*signer_name)
    return;
   if(ntohs(rep->rrsets[i]->rk.type) != LDNS_RR_TYPE_DNAME)
    break;
  }
  *signer_name = ((void*)0);
  *signer_len = 0;
 } else if(subtype == VAL_CLASS_NAMEERROR
  || subtype == VAL_CLASS_NODATA) {

  for(i=rep->an_numrrsets; i<
   rep->an_numrrsets+rep->ns_numrrsets; i++) {
   if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_NSEC
    || ntohs(rep->rrsets[i]->rk.type) ==
    LDNS_RR_TYPE_NSEC3) {
    val_find_rrset_signer(rep->rrsets[i],
     signer_name, signer_len);
    return;
   }
  }
 } else if(subtype == VAL_CLASS_CNAMENOANSWER) {


  int matchcount = 0;
  *signer_name = ((void*)0);
  *signer_len = 0;
  for(i=rep->an_numrrsets; i<rep->an_numrrsets+rep->
   ns_numrrsets; i++) {
   if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_NSEC
    || ntohs(rep->rrsets[i]->rk.type) ==
    LDNS_RR_TYPE_NSEC3) {
    val_find_best_signer(rep->rrsets[i], qinf,
     signer_name, signer_len, &matchcount);
   }
  }
 } else if(subtype == VAL_CLASS_ANY) {


  for(i=skip; i<rep->an_numrrsets; i++) {
   if(query_dname_compare(qinf->qname,
    rep->rrsets[i]->rk.dname) == 0) {
    val_find_rrset_signer(rep->rrsets[i],
     signer_name, signer_len);
    if(*signer_name)
     return;
   }
  }

  if(skip < rep->an_numrrsets &&
   ntohs(rep->rrsets[skip]->rk.type) ==
   LDNS_RR_TYPE_DNAME) {
   val_find_rrset_signer(rep->rrsets[skip],
    signer_name, signer_len);
   if(*signer_name)
    return;
  }
  *signer_name = ((void*)0);
  *signer_len = 0;
 } else if(subtype == VAL_CLASS_REFERRAL) {

  if(skip < rep->rrset_count) {
   val_find_rrset_signer(rep->rrsets[skip],
    signer_name, signer_len);
   return;
  }
  *signer_name = ((void*)0);
  *signer_len = 0;
 } else {
  verbose(VERB_QUERY, "find_signer: could not find signer name"
   " for unknown type response");
  *signer_name = ((void*)0);
  *signer_len = 0;
 }
}
