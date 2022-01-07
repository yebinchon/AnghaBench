
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int dname; int type; int rrset_class; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; } ;
struct query_info {scalar_t__ qtype; size_t qname_len; scalar_t__ qclass; int * qname; } ;
struct dns_msg {TYPE_1__* rep; } ;
typedef enum response_type { ____Placeholder_response_type } response_type ;
struct TYPE_3__ {scalar_t__ an_numrrsets; struct ub_packed_rrset_key** rrsets; int flags; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_CNAME ;
 int RESPONSE_TYPE_ANSWER ;
 int RESPONSE_TYPE_CNAME ;
 int get_cname_target (struct ub_packed_rrset_key*,int **,size_t*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;

enum response_type
response_type_from_cache(struct dns_msg* msg,
 struct query_info* request)
{

 if(FLAGS_GET_RCODE(msg->rep->flags) == LDNS_RCODE_NXDOMAIN)
  return RESPONSE_TYPE_ANSWER;
 if(request->qtype == LDNS_RR_TYPE_ANY)
  return RESPONSE_TYPE_ANSWER;



 if(msg->rep->an_numrrsets > 0) {




  uint8_t* mname = request->qname;
  size_t mname_len = request->qname_len;
  size_t i;
  for(i=0; i<msg->rep->an_numrrsets; i++) {
   struct ub_packed_rrset_key* s = msg->rep->rrsets[i];






   if(ntohs(s->rk.type) == request->qtype &&
    ntohs(s->rk.rrset_class) == request->qclass &&
    query_dname_compare(mname, s->rk.dname) == 0) {
    return RESPONSE_TYPE_ANSWER;
   }



   if(ntohs(s->rk.type) == LDNS_RR_TYPE_CNAME &&
    query_dname_compare(mname, s->rk.dname) == 0) {
    get_cname_target(s, &mname, &mname_len);
   }
  }




  if(mname != request->qname) {
   return RESPONSE_TYPE_CNAME;
  }
 }



 return RESPONSE_TYPE_ANSWER;
}
