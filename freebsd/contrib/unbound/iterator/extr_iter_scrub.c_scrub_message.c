
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regional {int dummy; } ;
struct query_info {scalar_t__ qclass; scalar_t__ qtype; int qname; } ;
struct msg_parse {int qdcount; int flags; scalar_t__ qtype; scalar_t__ qclass; int qname; } ;
struct module_env {int dummy; } ;
struct iter_env {int dummy; } ;
typedef int sldns_buffer ;


 int BIT_AD ;
 int BIT_QR ;
 int BIT_Z ;
 scalar_t__ FLAGS_GET_RCODE (int) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 int LDNS_RR_TYPE_NS ;
 int VERB_ALGO ;
 scalar_t__ dname_pkt_compare (int *,int ,int ) ;
 int log_nametypeclass (int ,char*,int *,int ,scalar_t__) ;
 int scrub_normalize (int *,struct msg_parse*,struct query_info*,struct regional*) ;
 int scrub_sanitize (int *,struct msg_parse*,struct query_info*,int *,struct module_env*,struct iter_env*) ;

int
scrub_message(sldns_buffer* pkt, struct msg_parse* msg,
 struct query_info* qinfo, uint8_t* zonename, struct regional* region,
 struct module_env* env, struct iter_env* ie)
{

 log_nametypeclass(VERB_ALGO, "scrub for", zonename, LDNS_RR_TYPE_NS,
  qinfo->qclass);
 if(msg->qdcount > 1)
  return 0;
 if( !(msg->flags&BIT_QR) )
  return 0;
 msg->flags &= ~(BIT_AD|BIT_Z);




 if((FLAGS_GET_RCODE(msg->flags) == LDNS_RCODE_NOERROR ||
  FLAGS_GET_RCODE(msg->flags) == LDNS_RCODE_NXDOMAIN) &&
  msg->qdcount == 0)
  return 0;



 if(msg->qdcount == 1) {
  if(dname_pkt_compare(pkt, msg->qname, qinfo->qname) != 0)
   return 0;
  if(msg->qtype != qinfo->qtype || msg->qclass != qinfo->qclass)
   return 0;
 }


 if(!scrub_normalize(pkt, msg, qinfo, region))
  return 0;

 if(!scrub_sanitize(pkt, msg, qinfo, zonename, env, ie))
  return 0;
 return 1;
}
