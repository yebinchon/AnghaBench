
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int sldns_buffer ;


 int * sldns_buffer_begin (int *) ;
 size_t sldns_buffer_position (int *) ;
 int sldns_buffer_read_u16 (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;
 int sldns_buffer_skip (int *,int) ;

__attribute__((used)) static int
pkt_rrsig_covered(sldns_buffer* pkt, uint8_t* here, uint16_t* type)
{
 size_t pos = sldns_buffer_position(pkt);
 sldns_buffer_set_position(pkt, (size_t)(here-sldns_buffer_begin(pkt)));

 if(sldns_buffer_remaining(pkt) < 4+2+19)
  return 0;
 sldns_buffer_skip(pkt, 4);
 if(sldns_buffer_read_u16(pkt) < 19) {
  sldns_buffer_set_position(pkt, pos);
  return 0;
 }
 *type = sldns_buffer_read_u16(pkt);
 sldns_buffer_set_position(pkt, pos);
 return 1;
}
