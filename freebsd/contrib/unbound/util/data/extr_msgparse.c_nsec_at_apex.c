
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
typedef int sldns_buffer ;


 scalar_t__ pkt_dname_len (int *) ;
 int sldns_buffer_position (int *) ;
 size_t sldns_buffer_read_u16 (int *) ;
 scalar_t__ sldns_buffer_read_u8 (int *) ;
 size_t sldns_buffer_remaining (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;
 int sldns_buffer_skip (int *,int) ;

__attribute__((used)) static int
nsec_at_apex(sldns_buffer* pkt)
{

 size_t pos = sldns_buffer_position(pkt);
 uint16_t rdatalen;
 if(sldns_buffer_remaining(pkt) < 7)
  return 0;
 sldns_buffer_skip(pkt, 4); ;
 rdatalen = sldns_buffer_read_u16(pkt);
 if(sldns_buffer_remaining(pkt) < rdatalen) {
  sldns_buffer_set_position(pkt, pos);
  return 0;
 }

 if(pkt_dname_len(pkt) == 0) {
  sldns_buffer_set_position(pkt, pos);
  return 0;
 }


 if(sldns_buffer_position(pkt) < pos+4+rdatalen) {

  uint8_t win, blen, bits;

  if(sldns_buffer_position(pkt)+3 > pos+4+rdatalen) {
   sldns_buffer_set_position(pkt, pos);
   return 0;
  }
  win = sldns_buffer_read_u8(pkt);
  blen = sldns_buffer_read_u8(pkt);
  bits = sldns_buffer_read_u8(pkt);


  if(win == 0 && blen >= 1 && (bits & 0x02)) {
   sldns_buffer_set_position(pkt, pos);
   return 1;
  }
 }

 sldns_buffer_set_position(pkt, pos);
 return 0;
}
