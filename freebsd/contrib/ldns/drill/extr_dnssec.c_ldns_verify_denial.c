
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RR_TYPE_NSEC ;
 int LDNS_RR_TYPE_NSEC3 ;
 int LDNS_RR_TYPE_RRSIG ;
 int LDNS_SECTION_ANY_NOQUESTION ;
 int LDNS_STATUS_CRYPTO_NO_RRSIG ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 int get_dnssec_rr (int *,int ,int ,int **,int **) ;
 scalar_t__ ldns_dname_compare (int ,int *) ;
 int ldns_dnssec_verify_denial_nsec3_match (int *,int *,int *,int ,int ,int,int **) ;
 scalar_t__ ldns_nsec_bitmap_covers_type (int ,int ) ;
 scalar_t__ ldns_nsec_covers_name (int *,int *) ;
 int ldns_nsec_get_bitmap (int *) ;
 scalar_t__ ldns_pkt_ancount (int *) ;
 int ldns_pkt_get_rcode (int *) ;
 int ldns_pkt_print (int ,int *) ;
 int * ldns_pkt_rr_list_by_type (int *,int ,int ) ;
 int ldns_rdf_clone (int *) ;
 int ldns_rr_free (int *) ;
 int ldns_rr_list_deep_free (int *) ;
 int * ldns_rr_list_rr (int *,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;
 int * ldns_rr_new () ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_set_owner (int *,int ) ;
 int ldns_rr_set_question (int *,int) ;
 int ldns_rr_set_ttl (int *,int ) ;
 int ldns_rr_set_type (int *,int ) ;
 int printf (char*) ;
 int stdout ;
 int verbosity ;

ldns_status
ldns_verify_denial(ldns_pkt *pkt, ldns_rdf *name, ldns_rr_type type, ldns_rr_list **nsec_rrs, ldns_rr_list **nsec_rr_sigs)
{
 (void)pkt;
 (void)name;
 (void)type;
 (void)nsec_rrs;
 (void)nsec_rr_sigs;
 return LDNS_STATUS_ERR;

}
