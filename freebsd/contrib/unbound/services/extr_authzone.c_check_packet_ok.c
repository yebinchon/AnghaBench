
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct auth_xfer {int namelen; scalar_t__ dclass; int name; TYPE_1__* task_probe; } ;
typedef int ssize_t ;
typedef int sldns_buffer ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ LDNS_ANCOUNT (int ) ;
 scalar_t__ LDNS_HEADER_SIZE ;
 scalar_t__ LDNS_ID_WIRE (int ) ;
 scalar_t__ LDNS_OPCODE_WIRE (int ) ;
 scalar_t__ LDNS_PACKET_QUERY ;
 int LDNS_QDCOUNT (int ) ;
 int LDNS_QR_WIRE (int ) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_WIRE (int ) ;
 scalar_t__ dname_pkt_compare (int *,int ,int ) ;
 int pkt_dname_len (int *) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_current (int *) ;
 scalar_t__ sldns_buffer_limit (int *) ;
 scalar_t__ sldns_buffer_read_u16 (int *) ;
 int sldns_buffer_read_u32 (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;

__attribute__((used)) static int
check_packet_ok(sldns_buffer* pkt, uint16_t qtype, struct auth_xfer* xfr,
 uint32_t* serial)
{



 if(sldns_buffer_limit(pkt) < LDNS_HEADER_SIZE)
  return 0;


 if(LDNS_ID_WIRE(sldns_buffer_begin(pkt)) != xfr->task_probe->id)
  return 0;


 if(!LDNS_QR_WIRE(sldns_buffer_begin(pkt)))
  return 0;
 if(LDNS_OPCODE_WIRE(sldns_buffer_begin(pkt)) != LDNS_PACKET_QUERY)
  return 0;
 if(LDNS_RCODE_WIRE(sldns_buffer_begin(pkt)) != LDNS_RCODE_NOERROR)
  return 0;


 if(LDNS_QDCOUNT(sldns_buffer_begin(pkt)) != 1)
  return 0;
 sldns_buffer_skip(pkt, LDNS_HEADER_SIZE);
 if(sldns_buffer_remaining(pkt) < xfr->namelen)
  return 0;
 if(query_dname_compare(sldns_buffer_current(pkt), xfr->name) != 0)
  return 0;
 sldns_buffer_skip(pkt, (ssize_t)xfr->namelen);


 if(sldns_buffer_remaining(pkt) < 4)
  return 0;
 if(sldns_buffer_read_u16(pkt) != qtype)
  return 0;
 if(sldns_buffer_read_u16(pkt) != xfr->dclass)
  return 0;

 if(serial) {
  uint16_t rdlen;

  if(LDNS_ANCOUNT(sldns_buffer_begin(pkt)) == 0)
   return 0;

  if(sldns_buffer_remaining(pkt) < 1)
   return 0;
  if(dname_pkt_compare(pkt, sldns_buffer_current(pkt),
   xfr->name) != 0)
   return 0;
  if(!pkt_dname_len(pkt))
   return 0;

  if(sldns_buffer_remaining(pkt) < 4+4+2)
   return 0;
  if(sldns_buffer_read_u16(pkt) != qtype)
   return 0;
  if(sldns_buffer_read_u16(pkt) != xfr->dclass)
   return 0;
  sldns_buffer_skip(pkt, 4);
  rdlen = sldns_buffer_read_u16(pkt);
  if(sldns_buffer_remaining(pkt) < rdlen)
   return 0;
  if(sldns_buffer_remaining(pkt) < 1)
   return 0;
  if(!pkt_dname_len(pkt))
   return 0;
  if(sldns_buffer_remaining(pkt) < 1)
   return 0;
  if(!pkt_dname_len(pkt))
   return 0;
  if(sldns_buffer_remaining(pkt) < 20)
   return 0;
  *serial = sldns_buffer_read_u32(pkt);
 }
 return 1;
}
