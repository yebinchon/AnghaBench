
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_pkt_section ;
typedef int ldns_pkt ;


 int ldns_pkt_push_rr (int *,int ,int *) ;
 scalar_t__ ldns_pkt_rr (int *,int ,int *) ;

bool
ldns_pkt_safe_push_rr(ldns_pkt *pkt, ldns_pkt_section sec, ldns_rr *rr)
{


 if (ldns_pkt_rr(pkt, sec, rr)) {

  return 0;
 }
 return ldns_pkt_push_rr(pkt, sec, rr);
}
