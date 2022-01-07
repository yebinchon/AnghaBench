
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int const ldns_pkt ;
struct TYPE_5__ {TYPE_1__* parent; scalar_t__ parent_type; int signatures; } ;
typedef TYPE_2__ ldns_dnssec_data_chain ;
struct TYPE_4__ {void* packet_qtype; } ;


 void* LDNS_RR_TYPE_DNSKEY ;
 int LDNS_SECTION_ANY_NOQUESTION ;
 void* ldns_dnssec_build_data_chain (int *,int ,int *,int const*,int *) ;
 int ldns_pkt_free (int const*) ;
 int * ldns_pkt_rr_list_by_name_and_type (int const*,int *,void*,int ) ;
 int const* ldns_resolver_query (int *,int *,void*,int ,int ) ;
 int ldns_rr_list_clone (int *) ;
 int ldns_rr_list_deep_free (int *) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;

__attribute__((used)) static void
ldns_dnssec_build_data_chain_dnskey(ldns_resolver *res,
         uint16_t qflags,
         const ldns_pkt *pkt,
         ldns_rr_list *signatures,
      ldns_dnssec_data_chain *new_chain,
      ldns_rdf *key_name,
      ldns_rr_class c) {
 ldns_rr_list *keys;
 ldns_pkt *my_pkt;
 if (signatures && ldns_rr_list_rr_count(signatures) > 0) {
  new_chain->signatures = ldns_rr_list_clone(signatures);
  new_chain->parent_type = 0;

  keys = ldns_pkt_rr_list_by_name_and_type(
      pkt,
     key_name,
     LDNS_RR_TYPE_DNSKEY,
     LDNS_SECTION_ANY_NOQUESTION
     );
  if (!keys) {
   my_pkt = ldns_resolver_query(res,
         key_name,
         LDNS_RR_TYPE_DNSKEY,
         c,
         qflags);
   if (my_pkt) {
   keys = ldns_pkt_rr_list_by_name_and_type(
       my_pkt,
      key_name,
      LDNS_RR_TYPE_DNSKEY,
      LDNS_SECTION_ANY_NOQUESTION
      );
   new_chain->parent = ldns_dnssec_build_data_chain(res,
             qflags,
             keys,
             my_pkt,
             ((void*)0));
   new_chain->parent->packet_qtype = LDNS_RR_TYPE_DNSKEY;
   ldns_pkt_free(my_pkt);
   }
  } else {
   new_chain->parent = ldns_dnssec_build_data_chain(res,
             qflags,
             keys,
             pkt,
             ((void*)0));
   new_chain->parent->packet_qtype = LDNS_RR_TYPE_DNSKEY;
  }
  ldns_rr_list_deep_free(keys);
 }
}
