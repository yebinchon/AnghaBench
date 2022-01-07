
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_pkt ;


 int ldns_pkt_additional (int const*) ;
 int * ldns_pkt_answer (int const*) ;
 int ldns_pkt_authority (int const*) ;
 int * ldns_rr_list_cat_clone (int *,int ) ;
 int ldns_rr_list_deep_free (int *) ;

ldns_rr_list *
ldns_pkt_all_noquestion(const ldns_pkt *packet)
{
 ldns_rr_list *all, *all2;

 all = ldns_rr_list_cat_clone(
   ldns_pkt_answer(packet),
   ldns_pkt_authority(packet));
 all2 = ldns_rr_list_cat_clone(all,
   ldns_pkt_additional(packet));

 ldns_rr_list_deep_free(all);
 return all2;
}
