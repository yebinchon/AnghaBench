
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;


 int pkt_dname_len (int *) ;
 int skip_ttl_rdata (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;

__attribute__((used)) static int
skip_pkt_rr(sldns_buffer* pkt)
{
 if(sldns_buffer_remaining(pkt) < 1) return 0;
 if(!pkt_dname_len(pkt))
  return 0;
 if(sldns_buffer_remaining(pkt) < 4) return 0;
 sldns_buffer_skip(pkt, 4);
 if(!skip_ttl_rdata(pkt))
  return 0;
 return 1;
}
