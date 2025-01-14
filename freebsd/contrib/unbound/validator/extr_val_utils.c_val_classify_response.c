
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct reply_info {int an_numrrsets; size_t ns_numrrsets; TYPE_2__** rrsets; int flags; } ;
struct query_info {scalar_t__ qtype; int qname; } ;
typedef enum val_classification { ____Placeholder_val_classification } val_classification ;
struct TYPE_3__ {int type; int dname; } ;
struct TYPE_4__ {TYPE_1__ rk; } ;


 int BIT_RD ;
 scalar_t__ FLAGS_GET_RCODE (int ) ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_NXDOMAIN ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int VAL_CLASS_ANY ;
 int VAL_CLASS_CNAME ;
 int VAL_CLASS_CNAMENOANSWER ;
 int VAL_CLASS_NAMEERROR ;
 int VAL_CLASS_NODATA ;
 int VAL_CLASS_POSITIVE ;
 int VAL_CLASS_REFERRAL ;
 int VAL_CLASS_UNKNOWN ;
 int log_dns_msg (char*,struct query_info*,struct reply_info*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;

enum val_classification
val_classify_response(uint16_t query_flags, struct query_info* origqinf,
 struct query_info* qinf, struct reply_info* rep, size_t skip)
{
 int rcode = (int)FLAGS_GET_RCODE(rep->flags);
 size_t i;



 if(rcode == LDNS_RCODE_NXDOMAIN && rep->an_numrrsets == 0)
  return VAL_CLASS_NAMEERROR;


 if(!(query_flags&BIT_RD) && rep->an_numrrsets == 0 &&
  rcode == LDNS_RCODE_NOERROR) {




  int saw_ns = 0;
  for(i=0; i<rep->ns_numrrsets; i++) {
   if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_SOA)
    return VAL_CLASS_NODATA;
   if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_DS)
    return VAL_CLASS_REFERRAL;
   if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_NS)
    saw_ns = 1;
  }
  return saw_ns?VAL_CLASS_REFERRAL:VAL_CLASS_NODATA;
 }

 if(!(query_flags&BIT_RD) && rep->ns_numrrsets == 0 &&
  rep->an_numrrsets == 1 && rcode == LDNS_RCODE_NOERROR &&
  ntohs(rep->rrsets[0]->rk.type) == LDNS_RR_TYPE_NS &&
  query_dname_compare(rep->rrsets[0]->rk.dname,
   origqinf->qname) != 0)
  return VAL_CLASS_REFERRAL;


 if(rcode != LDNS_RCODE_NOERROR && rcode != LDNS_RCODE_NXDOMAIN)
  return VAL_CLASS_UNKNOWN;

 if(skip>0 && rep->an_numrrsets <= skip)
  return VAL_CLASS_CNAMENOANSWER;


 if(rcode == LDNS_RCODE_NOERROR && rep->an_numrrsets == 0)
  return VAL_CLASS_NODATA;






 if(rcode == LDNS_RCODE_NOERROR && qinf->qtype == LDNS_RR_TYPE_ANY)
  return VAL_CLASS_ANY;



 for(i=skip; i<rep->an_numrrsets; i++) {
  if(rcode == LDNS_RCODE_NOERROR &&
   ntohs(rep->rrsets[i]->rk.type) == qinf->qtype)
   return VAL_CLASS_POSITIVE;
  if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_CNAME)
   return VAL_CLASS_CNAME;
 }
 log_dns_msg("validator: error. failed to classify response message: ",
  qinf, rep);
 return VAL_CLASS_UNKNOWN;
}
