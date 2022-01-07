
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct query_info {int * local_alias; void* qclass; void* qtype; int qname_len; int qname; } ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_HEADER_SIZE ;
 scalar_t__ LDNS_OPCODE_WIRE (int *) ;
 scalar_t__ LDNS_PACKET_NOTIFY ;
 scalar_t__ LDNS_PACKET_QUERY ;
 int LDNS_QDCOUNT (int *) ;
 int query_dname_len (int *) ;
 int * sldns_buffer_begin (int *) ;
 int sldns_buffer_current (int *) ;
 scalar_t__ sldns_buffer_limit (int *) ;
 scalar_t__ sldns_buffer_position (int *) ;
 void* sldns_buffer_read_u16 (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,scalar_t__) ;

int
query_info_parse(struct query_info* m, sldns_buffer* query)
{
 uint8_t* q = sldns_buffer_begin(query);

 if(sldns_buffer_limit(query) < LDNS_HEADER_SIZE + 5)
  return 0;
 if((LDNS_OPCODE_WIRE(q) != LDNS_PACKET_QUERY && LDNS_OPCODE_WIRE(q) !=
  LDNS_PACKET_NOTIFY) || LDNS_QDCOUNT(q) != 1 ||
  sldns_buffer_position(query) != 0)
  return 0;
 sldns_buffer_skip(query, LDNS_HEADER_SIZE);
 m->qname = sldns_buffer_current(query);
 if((m->qname_len = query_dname_len(query)) == 0)
  return 0;
 if(sldns_buffer_remaining(query) < 4)
  return 0;
 m->qtype = sldns_buffer_read_u16(query);
 m->qclass = sldns_buffer_read_u16(query);
 m->local_alias = ((void*)0);
 return 1;
}
