
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct query_info {int dummy; } ;
typedef int ssize_t ;
typedef int sldns_buffer ;
typedef int q ;


 scalar_t__ LDNS_ANCOUNT (int ) ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int memset (struct query_info*,int ,int) ;
 scalar_t__ pkt_dname_len (int *) ;
 int query_info_parse (struct query_info*,int *) ;
 int sldns_buffer_begin (int *) ;
 scalar_t__ sldns_buffer_read_u16 (int *) ;
 int sldns_buffer_read_u32 (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_set_position (int *,int ) ;
 int sldns_buffer_skip (int *,int) ;

int
auth_zone_parse_notify_serial(sldns_buffer* pkt, uint32_t *serial)
{
 struct query_info q;
 uint16_t rdlen;
 memset(&q, 0, sizeof(q));
 sldns_buffer_set_position(pkt, 0);
 if(!query_info_parse(&q, pkt)) return 0;
 if(LDNS_ANCOUNT(sldns_buffer_begin(pkt)) == 0) return 0;

 if(sldns_buffer_remaining(pkt) < 1) return 0;
 if(pkt_dname_len(pkt) == 0) return 0;

 if(sldns_buffer_remaining(pkt) < 10 )
  return 0;
 if(sldns_buffer_read_u16(pkt) != LDNS_RR_TYPE_SOA) return 0;
 sldns_buffer_skip(pkt, 2);
 sldns_buffer_skip(pkt, 4);
 rdlen = sldns_buffer_read_u16(pkt);
 if(sldns_buffer_remaining(pkt) < rdlen) return 0;
 if(rdlen < 22) return 0;
 sldns_buffer_skip(pkt, (ssize_t)(rdlen-20));
 *serial = sldns_buffer_read_u32(pkt);

 return 1;
}
