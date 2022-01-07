
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ ldns_rr_type ;
typedef int const ldns_rr_list ;
typedef int ldns_rr_class ;
typedef int ldns_rr ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int const ldns_pkt ;
struct TYPE_8__ {int packet_nodata; int rrset; void* packet_qtype; int packet_rcode; struct TYPE_8__* parent; } ;
typedef TYPE_1__ ldns_dnssec_data_chain ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int LDNS_SECTION_ANY_NOQUESTION ;
 int assert (int ) ;
 int ldns_dnssec_build_data_chain_dnskey (int *,int ,int const*,int const*,TYPE_1__*,int *,int ) ;
 TYPE_1__* ldns_dnssec_build_data_chain_nokeyname (int *,int ,int *,int const*,TYPE_1__*) ;
 int ldns_dnssec_build_data_chain_other (int *,int ,TYPE_1__*,int *,int ,int const*) ;
 TYPE_1__* ldns_dnssec_data_chain_new () ;
 int const* ldns_dnssec_pkt_get_rrsigs_for_name_and_type (int const*,int *,scalar_t__) ;
 int const* ldns_dnssec_pkt_get_rrsigs_for_type (int const*,scalar_t__) ;
 int ldns_dnssec_pkt_has_rrsigs (int const*) ;
 scalar_t__ ldns_pkt_ancount (int const*) ;
 int ldns_pkt_free (int const*) ;
 int ldns_pkt_get_rcode (int const*) ;
 int const* ldns_pkt_rr_list_by_type (int const*,scalar_t__,int ) ;
 int const* ldns_resolver_query (int *,int *,scalar_t__,int ,int ) ;
 int ldns_rr_get_class (int *) ;
 void* ldns_rr_get_type (int *) ;
 int ldns_rr_list_clone (int const*) ;
 int ldns_rr_list_deep_free (int const*) ;
 int ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int ,int *) ;
 int * ldns_rr_list_rr (int const*,int ) ;
 scalar_t__ ldns_rr_list_rr_count (int const*) ;
 int * ldns_rr_owner (int *) ;
 int * ldns_rr_rdf (int *,int) ;

ldns_dnssec_data_chain *
ldns_dnssec_build_data_chain(ldns_resolver *res,
         uint16_t qflags,
         const ldns_rr_list *rrset,
         const ldns_pkt *pkt,
         ldns_rr *orig_rr)
{
 ldns_rr_list *signatures = ((void*)0);
 ldns_rr_list *dss = ((void*)0);

 ldns_rr_list *my_rrset;

 ldns_pkt *my_pkt;

 ldns_rdf *name = ((void*)0), *key_name = ((void*)0);
 ldns_rr_type type = 0;
 ldns_rr_class c = 0;

 bool other_rrset = 0;

 ldns_dnssec_data_chain *new_chain = ldns_dnssec_data_chain_new();

 assert(pkt != ((void*)0));

 if (!ldns_dnssec_pkt_has_rrsigs(pkt)) {


  return new_chain;
 }

 if (orig_rr) {
  new_chain->rrset = ldns_rr_list_new();
  ldns_rr_list_push_rr(new_chain->rrset, orig_rr);
  new_chain->parent = ldns_dnssec_build_data_chain(res,
               qflags,
               rrset,
               pkt,
               ((void*)0));
  new_chain->packet_rcode = ldns_pkt_get_rcode(pkt);
  new_chain->packet_qtype = ldns_rr_get_type(orig_rr);
  if (ldns_pkt_ancount(pkt) == 0) {
   new_chain->packet_nodata = 1;
  }
  return new_chain;
 }

 if (!rrset || ldns_rr_list_rr_count(rrset) < 1) {


  new_chain->packet_nodata = 1;
  if (pkt) {
   my_rrset = ldns_pkt_rr_list_by_type(pkt,
           LDNS_RR_TYPE_NSEC,
           LDNS_SECTION_ANY_NOQUESTION
           );
   if (my_rrset) {
    if (ldns_rr_list_rr_count(my_rrset) > 0) {
     type = LDNS_RR_TYPE_NSEC;
     other_rrset = 1;
    } else {
     ldns_rr_list_deep_free(my_rrset);
     my_rrset = ((void*)0);
    }
   } else {

    my_rrset = ldns_pkt_rr_list_by_type(pkt,
           LDNS_RR_TYPE_NSEC3,
       LDNS_SECTION_ANY_NOQUESTION);
    if (my_rrset) {
     if (ldns_rr_list_rr_count(my_rrset) > 0) {
      type = LDNS_RR_TYPE_NSEC3;
      other_rrset = 1;
     } else {
      ldns_rr_list_deep_free(my_rrset);
      my_rrset = ((void*)0);
     }
    } else {


     return new_chain;
    }
   }
  } else {
   return new_chain;
  }
 } else {
  my_rrset = (ldns_rr_list *) rrset;
 }

 if (my_rrset && ldns_rr_list_rr_count(my_rrset) > 0) {
  new_chain->rrset = ldns_rr_list_clone(my_rrset);
  name = ldns_rr_owner(ldns_rr_list_rr(my_rrset, 0));
  type = ldns_rr_get_type(ldns_rr_list_rr(my_rrset, 0));
  c = ldns_rr_get_class(ldns_rr_list_rr(my_rrset, 0));
 }

 if (other_rrset) {
  ldns_rr_list_deep_free(my_rrset);
 }





 if (type == LDNS_RR_TYPE_NSEC || type == LDNS_RR_TYPE_NSEC3) {


  if (pkt) {
   signatures = ldns_dnssec_pkt_get_rrsigs_for_type(pkt, type);
  } else {
   my_pkt = ldns_resolver_query(res, name, type, c, qflags);
   if (my_pkt) {
   signatures = ldns_dnssec_pkt_get_rrsigs_for_type(pkt, type);
   ldns_pkt_free(my_pkt);
   }
  }
 } else {
  if (pkt) {
   signatures =
    ldns_dnssec_pkt_get_rrsigs_for_name_and_type(pkt,
             name,
             type);
  }
  if (!signatures) {
   my_pkt = ldns_resolver_query(res, name, type, c, qflags);
   if (my_pkt) {
   signatures =
    ldns_dnssec_pkt_get_rrsigs_for_name_and_type(my_pkt,
             name,
             type);
   ldns_pkt_free(my_pkt);
   }
  }
 }

 if (signatures && ldns_rr_list_rr_count(signatures) > 0) {
  key_name = ldns_rr_rdf(ldns_rr_list_rr(signatures, 0), 7);
 }
 if (!key_name) {
  if (signatures) {
   ldns_rr_list_deep_free(signatures);
  }
  return ldns_dnssec_build_data_chain_nokeyname(res,
                                                qflags,
                                                orig_rr,
                                                rrset,
                                                new_chain);
 }
 if (type != LDNS_RR_TYPE_DNSKEY) {
  ldns_dnssec_build_data_chain_dnskey(res,
                                      qflags,
                                      pkt,
                                      signatures,
                                      new_chain,
                                      key_name,
                                      c
                                     );
 } else {
  ldns_dnssec_build_data_chain_other(res,
                                     qflags,
                                     new_chain,
                                     key_name,
                                     c,
                                     dss
                                    );
 }
 if (signatures) {
  ldns_rr_list_deep_free(signatures);
 }
 return new_chain;
}
