
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_pkt ;
typedef int ldns_dnssec_zone ;


 int add_rr_list_to_referrals (int *,int *) ;
 int * ldns_pkt_all_noquestion (int *) ;
 int ldns_rr_list_free (int *) ;

__attribute__((used)) static void add_referrals(ldns_dnssec_zone *referrals, ldns_pkt *p)
{
 ldns_rr_list *l = ldns_pkt_all_noquestion(p);
 if (l) {
  add_rr_list_to_referrals(referrals, l);
  ldns_rr_list_free(l);
 }
}
