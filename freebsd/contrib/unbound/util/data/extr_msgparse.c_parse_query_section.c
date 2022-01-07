
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct msg_parse {int qdcount; void* qclass; void* qtype; int qname_len; int qname; } ;
typedef int sldns_buffer ;


 int LDNS_RCODE_FORMERR ;
 int log_assert (int) ;
 int pkt_dname_len (int *) ;
 int sldns_buffer_current (int *) ;
 void* sldns_buffer_read_u16 (int *) ;
 int sldns_buffer_remaining (int *) ;

__attribute__((used)) static int
parse_query_section(sldns_buffer* pkt, struct msg_parse* msg)
{
 if(msg->qdcount == 0)
  return 0;
 if(msg->qdcount > 1)
  return LDNS_RCODE_FORMERR;
 log_assert(msg->qdcount == 1);
 if(sldns_buffer_remaining(pkt) <= 0)
  return LDNS_RCODE_FORMERR;
 msg->qname = sldns_buffer_current(pkt);
 if((msg->qname_len = pkt_dname_len(pkt)) == 0)
  return LDNS_RCODE_FORMERR;
 if(sldns_buffer_remaining(pkt) < sizeof(uint16_t)*2)
  return LDNS_RCODE_FORMERR;
 msg->qtype = sldns_buffer_read_u16(pkt);
 msg->qclass = sldns_buffer_read_u16(pkt);
 return 0;
}
