
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ssize_t ;
typedef int sldns_buffer ;


 int sldns_buffer_read_u16 (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;

__attribute__((used)) static int
skip_ttl_rdata(sldns_buffer* pkt)
{
 uint16_t rdatalen;
 if(sldns_buffer_remaining(pkt) < 6)
  return 0;
 sldns_buffer_skip(pkt, 4);
 rdatalen = sldns_buffer_read_u16(pkt);
 if(sldns_buffer_remaining(pkt) < rdatalen)
  return 0;
 sldns_buffer_skip(pkt, (ssize_t)rdatalen);
 return 1;
}
