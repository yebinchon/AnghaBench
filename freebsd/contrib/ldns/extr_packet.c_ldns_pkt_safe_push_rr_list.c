
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_pkt_section ;
typedef int ldns_pkt ;


 int ldns_pkt_safe_push_rr (int *,int ,int ) ;
 int ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;

bool
ldns_pkt_safe_push_rr_list(ldns_pkt *p, ldns_pkt_section s, ldns_rr_list *list)
{
 size_t i;
 for(i = 0; i < ldns_rr_list_rr_count(list); i++) {
  if (!ldns_pkt_safe_push_rr(p, s, ldns_rr_list_rr(list, i))) {
   return 0;
  }
 }
 return 1;
}
