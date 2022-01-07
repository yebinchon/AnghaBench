
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;


 int skip_pkt_rr (int *) ;

__attribute__((used)) static int
skip_pkt_rrs(sldns_buffer* pkt, int num)
{
 int i;
 for(i=0; i<num; i++) {
  if(!skip_pkt_rr(pkt))
   return 0;
 }
 return 1;
}
