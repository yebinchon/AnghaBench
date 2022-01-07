
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * dname; int type; int rrset_class; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct query_info {size_t qname_len; scalar_t__ qtype; scalar_t__ qclass; int * qname; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct delegpt {int * name; } ;
typedef enum response_type { ____Placeholder_response_type } response_type ;
struct TYPE_4__ {int flags; size_t an_numrrsets; size_t ns_numrrsets; struct ub_packed_rrset_key** rrsets; } ;


 int BIT_AA ;
 int BIT_RA ;
 scalar_t__ FLAGS_GET_RCODE (int) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int RESPONSE_TYPE_ANSWER ;
 int RESPONSE_TYPE_CNAME ;
 int RESPONSE_TYPE_LAME ;
 int RESPONSE_TYPE_REC_LAME ;
 int RESPONSE_TYPE_REFERRAL ;
 int RESPONSE_TYPE_THROWAWAY ;
 scalar_t__ dname_strict_subdomain_c (int *,int *) ;
 scalar_t__ dname_subdomain_c (int *,int *) ;
 int get_cname_target (struct ub_packed_rrset_key*,int **,size_t*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int *) ;

enum response_type
response_type_from_server(int rdset,
 struct dns_msg* msg, struct query_info* request, struct delegpt* dp)
{
 uint8_t* origzone = (uint8_t*)"\000";
 struct ub_packed_rrset_key* s;
 size_t i;

 if(!msg || !request)
  return RESPONSE_TYPE_THROWAWAY;


 if(FLAGS_GET_RCODE(msg->rep->flags) == LDNS_RCODE_NXDOMAIN) {

  if( (msg->rep->flags&BIT_RA) &&
   !(msg->rep->flags&BIT_AA) && !rdset)
    return RESPONSE_TYPE_REC_LAME;

  for(i=0; i<msg->rep->an_numrrsets; i++) {
   s = msg->rep->rrsets[i];
   if(ntohs(s->rk.type) == LDNS_RR_TYPE_CNAME &&
    query_dname_compare(request->qname,
    s->rk.dname) == 0) {
    return RESPONSE_TYPE_CNAME;
   }
  }
  return RESPONSE_TYPE_ANSWER;
 }



 if(FLAGS_GET_RCODE(msg->rep->flags) != LDNS_RCODE_NOERROR)
  return RESPONSE_TYPE_THROWAWAY;



 if(dp) {
  origzone = dp->name;
 }



 if(msg->rep->an_numrrsets > 0) {
  uint8_t* mname = request->qname;
  size_t mname_len = request->qname_len;




  for(i=0; i<msg->rep->an_numrrsets; i++) {
   s = msg->rep->rrsets[i];




   if((request->qtype == LDNS_RR_TYPE_ANY ||
    request->qtype == LDNS_RR_TYPE_NS) &&
    ntohs(s->rk.type) == LDNS_RR_TYPE_NS &&
    ntohs(s->rk.rrset_class) == request->qclass &&
    dname_strict_subdomain_c(s->rk.dname,
    origzone)) {
    if((msg->rep->flags&BIT_AA))
     return RESPONSE_TYPE_ANSWER;
    return RESPONSE_TYPE_REFERRAL;
   }






   if(ntohs(s->rk.type) == request->qtype &&
    ntohs(s->rk.rrset_class) == request->qclass &&
    query_dname_compare(mname, s->rk.dname) == 0) {
    if((msg->rep->flags&BIT_AA))
     return RESPONSE_TYPE_ANSWER;




    break;
   }



   if(ntohs(s->rk.type) == LDNS_RR_TYPE_CNAME &&
    query_dname_compare(mname, s->rk.dname) == 0) {
    get_cname_target(s, &mname, &mname_len);
   }
  }

  if(request->qtype == LDNS_RR_TYPE_ANY)
   return RESPONSE_TYPE_ANSWER;



  if(mname != request->qname) {
   return RESPONSE_TYPE_CNAME;
  }
 }



 for(i = msg->rep->an_numrrsets; i < (msg->rep->an_numrrsets +
  msg->rep->ns_numrrsets); i++) {
  s = msg->rep->rrsets[i];


  if(ntohs(s->rk.type) == LDNS_RR_TYPE_SOA &&
   dname_subdomain_c(request->qname, s->rk.dname)) {

   if( (msg->rep->flags&BIT_RA) &&
    !(msg->rep->flags&BIT_AA) && !rdset)
    return RESPONSE_TYPE_REC_LAME;
   return RESPONSE_TYPE_ANSWER;
  }
 }




 for(i = msg->rep->an_numrrsets; i < (msg->rep->an_numrrsets +
  msg->rep->ns_numrrsets); i++) {
  s = msg->rep->rrsets[i];



  if(ntohs(s->rk.type) == LDNS_RR_TYPE_NS) {


   if(query_dname_compare(s->rk.dname, origzone) == 0) {


    if( (msg->rep->flags&BIT_RA) &&
     !(msg->rep->flags&BIT_AA) && !rdset)
     return RESPONSE_TYPE_REC_LAME;
    if(msg->rep->an_numrrsets==0 &&
     !(msg->rep->flags&BIT_AA) && !rdset)
     return RESPONSE_TYPE_THROWAWAY;
    return RESPONSE_TYPE_ANSWER;
   }


   if(dname_subdomain_c(origzone, s->rk.dname)) {
    if(rdset)
     return RESPONSE_TYPE_THROWAWAY;
    return RESPONSE_TYPE_LAME;
   }



   if(dname_subdomain_c(s->rk.dname, origzone)) {
    return RESPONSE_TYPE_REFERRAL;
   }

  }
 }




 if( (msg->rep->flags&BIT_RA) && !(msg->rep->flags&BIT_AA) && !rdset)
  return RESPONSE_TYPE_REC_LAME;
 return RESPONSE_TYPE_ANSWER;
}
