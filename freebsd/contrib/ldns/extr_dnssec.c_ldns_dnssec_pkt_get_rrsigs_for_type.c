
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RDF_TYPE_TYPE ;
 int LDNS_RR_TYPE_RRSIG ;
 int LDNS_SECTION_ANY_NOQUESTION ;
 int htons (int ) ;
 int * ldns_pkt_rr_list_by_type (int const*,int ,int ) ;
 int ldns_rdf_free (int *) ;
 int * ldns_rdf_new (int ,int,int *) ;
 int ldns_rr_list_deep_free (int *) ;
 int * ldns_rr_list_subtype_by_rdf (int *,int *,int ) ;

ldns_rr_list *
ldns_dnssec_pkt_get_rrsigs_for_type(const ldns_pkt *pkt, ldns_rr_type type)
{
 uint16_t t_netorder;
 ldns_rr_list *sigs;
 ldns_rr_list *sigs_covered;
 ldns_rdf *rdf_t;

 sigs = ldns_pkt_rr_list_by_type(pkt,
                                 LDNS_RR_TYPE_RRSIG,
                                 LDNS_SECTION_ANY_NOQUESTION
         );

 t_netorder = htons(type);
 rdf_t = ldns_rdf_new(LDNS_RDF_TYPE_TYPE,
      2,
      &t_netorder);
 sigs_covered = ldns_rr_list_subtype_by_rdf(sigs, rdf_t, 0);

 ldns_rdf_free(rdf_t);
 ldns_rr_list_deep_free(sigs);

 return sigs_covered;

}
