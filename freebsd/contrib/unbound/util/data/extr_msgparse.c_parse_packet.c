
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct regional {int dummy; } ;
struct msg_parse {int qdcount; int ancount; int nscount; int arcount; scalar_t__ ar_rrsets; scalar_t__ ns_rrsets; scalar_t__ an_rrsets; scalar_t__ rrset_count; void* flags; int id; } ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_HEADER_SIZE ;
 int LDNS_RCODE_FORMERR ;
 int LDNS_SECTION_ADDITIONAL ;
 int LDNS_SECTION_ANSWER ;
 int LDNS_SECTION_AUTHORITY ;
 int parse_query_section (int *,struct msg_parse*) ;
 int parse_section (int *,struct msg_parse*,struct regional*,int ,int,scalar_t__*) ;
 int sldns_buffer_read (int *,int *,int) ;
 void* sldns_buffer_read_u16 (int *) ;
 scalar_t__ sldns_buffer_remaining (int *) ;

int
parse_packet(sldns_buffer* pkt, struct msg_parse* msg, struct regional* region)
{
 int ret;
 if(sldns_buffer_remaining(pkt) < LDNS_HEADER_SIZE)
  return LDNS_RCODE_FORMERR;

 sldns_buffer_read(pkt, &msg->id, sizeof(uint16_t));
 msg->flags = sldns_buffer_read_u16(pkt);
 msg->qdcount = sldns_buffer_read_u16(pkt);
 msg->ancount = sldns_buffer_read_u16(pkt);
 msg->nscount = sldns_buffer_read_u16(pkt);
 msg->arcount = sldns_buffer_read_u16(pkt);
 if(msg->qdcount > 1)
  return LDNS_RCODE_FORMERR;
 if((ret = parse_query_section(pkt, msg)) != 0)
  return ret;
 if((ret = parse_section(pkt, msg, region, LDNS_SECTION_ANSWER,
  msg->ancount, &msg->an_rrsets)) != 0)
  return ret;
 if((ret = parse_section(pkt, msg, region, LDNS_SECTION_AUTHORITY,
  msg->nscount, &msg->ns_rrsets)) != 0)
  return ret;
 if(sldns_buffer_remaining(pkt) == 0 && msg->arcount == 1) {


 } else if((ret = parse_section(pkt, msg, region,
  LDNS_SECTION_ADDITIONAL, msg->arcount, &msg->ar_rrsets)) != 0)
  return ret;



 msg->rrset_count = msg->an_rrsets + msg->ns_rrsets + msg->ar_rrsets;
 return 0;
}
