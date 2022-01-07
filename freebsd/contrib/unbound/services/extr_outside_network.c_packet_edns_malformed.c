
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sldns_buffer {int dummy; } ;


 scalar_t__ LDNS_ANCOUNT (int ) ;
 scalar_t__ LDNS_HEADER_SIZE ;
 int LDNS_QDCOUNT (int ) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_WIRE (int ) ;
 size_t dname_valid (scalar_t__*,scalar_t__) ;
 scalar_t__* sldns_buffer_at (struct sldns_buffer*,scalar_t__) ;
 int sldns_buffer_begin (struct sldns_buffer*) ;
 scalar_t__ sldns_buffer_limit (struct sldns_buffer*) ;

__attribute__((used)) static int
packet_edns_malformed(struct sldns_buffer* buf, int qtype)
{
 size_t len;
 if(sldns_buffer_limit(buf) < LDNS_HEADER_SIZE)
  return 1;

 if(LDNS_RCODE_WIRE(sldns_buffer_begin(buf)) != LDNS_RCODE_NOERROR)
  return 0;

 if(LDNS_QDCOUNT(sldns_buffer_begin(buf)) != 1 ||
  LDNS_ANCOUNT(sldns_buffer_begin(buf)) == 0)
  return 0;

 len = dname_valid(sldns_buffer_at(buf, LDNS_HEADER_SIZE),
  sldns_buffer_limit(buf)-LDNS_HEADER_SIZE);
 if(len == 0)
  return 0;
 if(len == 1 && qtype == 0)
  return 0;

 if(sldns_buffer_limit(buf) < LDNS_HEADER_SIZE + len + 4 + 3)
  return 0;



 if(sldns_buffer_at(buf, LDNS_HEADER_SIZE+len+4)[0] == 0 &&
    sldns_buffer_at(buf, LDNS_HEADER_SIZE+len+4)[1] == 0 &&
    sldns_buffer_at(buf, LDNS_HEADER_SIZE+len+4)[2] == 0)
  return 1;
 return 0;
}
