
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rdf ;
typedef int ldns_pkt_section ;
typedef int ldns_pkt ;


 scalar_t__ ldns_dname_compare (int ,int const*) ;
 int * ldns_pkt_get_section_clone (int const*,int ) ;
 int ldns_rr_clone (int ) ;
 scalar_t__ ldns_rr_get_type (int ) ;
 int ldns_rr_list_deep_free (int *) ;
 int ldns_rr_list_free (int *) ;
 int * ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int *,int ) ;
 int ldns_rr_list_rr (int *,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;
 int ldns_rr_owner (int ) ;

ldns_rr_list *
ldns_pkt_rr_list_by_name_and_type(const ldns_pkt *packet,
                                  const ldns_rdf *ownername,
                                  ldns_rr_type type,
                                  ldns_pkt_section sec)
{
 ldns_rr_list *rrs;
 ldns_rr_list *new;
 ldns_rr_list *ret;
 uint16_t i;

 if(!packet) {
  return ((void*)0);
 }

 rrs = ldns_pkt_get_section_clone(packet, sec);
 new = ldns_rr_list_new();
 ret = ((void*)0);

 for(i = 0; i < ldns_rr_list_rr_count(rrs); i++) {
  if (type == ldns_rr_get_type(ldns_rr_list_rr(rrs, i)) &&
      ldns_dname_compare(ldns_rr_owner(ldns_rr_list_rr(rrs, i)),
                       ownername
                      ) == 0
     ) {

   ldns_rr_list_push_rr(new, ldns_rr_clone(ldns_rr_list_rr(rrs, i)));
   ret = new;
  }
 }
 ldns_rr_list_deep_free(rrs);
 if (!ret) {
  ldns_rr_list_free(new);
 }
 return ret;
}
