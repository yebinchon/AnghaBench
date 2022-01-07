
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;
struct TYPE_5__ {TYPE_4__* parent; } ;
typedef TYPE_1__ ldns_dnssec_data_chain ;
struct TYPE_6__ {int packet_qtype; } ;


 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_DS ;
 TYPE_4__* ldns_dnssec_build_data_chain (int *,int ,int *,int *,int *) ;
 scalar_t__ ldns_pkt_ancount (int *) ;
 int ldns_pkt_free (int *) ;
 int * ldns_resolver_query (int *,int *,int ,int ,int ) ;
 int * ldns_rr_list_rr (int const*,int ) ;
 scalar_t__ ldns_rr_list_rr_count (int const*) ;
 int * ldns_rr_owner (int *) ;

__attribute__((used)) static ldns_dnssec_data_chain *
ldns_dnssec_build_data_chain_nokeyname(ldns_resolver *res,
                                       uint16_t qflags,
                                       ldns_rr *orig_rr,
                                       const ldns_rr_list *rrset,
                                       ldns_dnssec_data_chain *new_chain)
{
 ldns_rdf *possible_parent_name;
 ldns_pkt *my_pkt;




 if (orig_rr) {
  possible_parent_name = ldns_rr_owner(orig_rr);
 } else if (rrset && ldns_rr_list_rr_count(rrset) > 0) {
  possible_parent_name = ldns_rr_owner(ldns_rr_list_rr(rrset, 0));
 } else {

  return new_chain;
 }

 my_pkt = ldns_resolver_query(res,
               possible_parent_name,
               LDNS_RR_TYPE_DS,
               LDNS_RR_CLASS_IN,
               qflags);
 if (!my_pkt) {
  return new_chain;
 }

 if (ldns_pkt_ancount(my_pkt) > 0) {


  ldns_pkt_free(my_pkt);
 } else {

  new_chain->parent = ldns_dnssec_build_data_chain(res,
                            qflags,
                            ((void*)0),
                            my_pkt,
                            ((void*)0));

  new_chain->parent->packet_qtype = LDNS_RR_TYPE_DS;

 }
 return new_chain;
}
