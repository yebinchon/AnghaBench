
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;
struct TYPE_4__ {int parent_type; int * signatures; TYPE_3__* parent; } ;
typedef TYPE_1__ ldns_dnssec_data_chain ;
struct TYPE_5__ {int packet_qtype; } ;


 int LDNS_RR_TYPE_DNSKEY ;
 int LDNS_RR_TYPE_DS ;
 int LDNS_RR_TYPE_RRSIG ;
 int LDNS_SECTION_ANSWER ;
 int LDNS_SECTION_ANY_NOQUESTION ;
 TYPE_3__* ldns_dnssec_build_data_chain (int *,int ,int *,int *,int *) ;
 int ldns_pkt_free (int *) ;
 int * ldns_pkt_rr_list_by_name_and_type (int *,int *,int ,int ) ;
 int * ldns_resolver_query (int *,int *,int ,int ,int ) ;
 int ldns_rr_list_deep_free (int *) ;
 int printf (char*) ;

__attribute__((used)) static void
ldns_dnssec_build_data_chain_other(ldns_resolver *res,
         uint16_t qflags,
      ldns_dnssec_data_chain *new_chain,
      ldns_rdf *key_name,
      ldns_rr_class c,
      ldns_rr_list *dss)
{
 ldns_pkt *my_pkt;
 ldns_rr_list *signatures2;

 new_chain->parent_type = 1;

 my_pkt = ldns_resolver_query(res,
       key_name,
       LDNS_RR_TYPE_DS,
       c,
       qflags);
 if (my_pkt) {
 dss = ldns_pkt_rr_list_by_name_and_type(my_pkt,
         key_name,
         LDNS_RR_TYPE_DS,
         LDNS_SECTION_ANY_NOQUESTION
         );
 if (dss) {
  new_chain->parent = ldns_dnssec_build_data_chain(res,
            qflags,
            dss,
            my_pkt,
            ((void*)0));
  new_chain->parent->packet_qtype = LDNS_RR_TYPE_DS;
  ldns_rr_list_deep_free(dss);
 }
 ldns_pkt_free(my_pkt);
 }

 my_pkt = ldns_resolver_query(res,
       key_name,
       LDNS_RR_TYPE_DNSKEY,
       c,
       qflags);
 if (my_pkt) {
 signatures2 = ldns_pkt_rr_list_by_name_and_type(my_pkt,
             key_name,
             LDNS_RR_TYPE_RRSIG,
             LDNS_SECTION_ANSWER);
 if (signatures2) {
  if (new_chain->signatures) {
   printf("There were already sigs!\n");
   ldns_rr_list_deep_free(new_chain->signatures);
   printf("replacing the old sigs\n");
  }
  new_chain->signatures = signatures2;
 }
 ldns_pkt_free(my_pkt);
 }
}
